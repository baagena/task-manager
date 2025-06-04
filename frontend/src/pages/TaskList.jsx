import { useEffect, useState } from 'react';
import API from '../api';
import { Button } from '../components/ui/button';
import TaskForm from '../components/TaskForm';
import { useNavigate } from 'react-router-dom';

export default function TaskList() {
  const [tasks, setTasks] = useState([]);
  const [filter, setFilter] = useState('all');
  const [showModal, setShowModal] = useState(false);
  const navigate = useNavigate();

  const fetchTasks = async () => {
    try {
      const res = await API.get('/tasks');
      setTasks(res.data.data);
    } catch (err) {
      console.error(err);
      if (err.response?.status === 401) {
        navigate('/login');
      }
    }
  };

  useEffect(() => {
    const token = localStorage.getItem('token');
    if (!token) {
      navigate('/login');
    } else {
      fetchTasks();
    }
  }, []);

  const handleLogout = () => {
    localStorage.removeItem('token');
    navigate('/login');
  };

  const handleDelete = async (id) => {
    await API.delete(`/tasks/${id}`);
    fetchTasks();
  };

  const handleToggle = async (task) => {
    await API.patch(`/tasks/${task.id}`, { status: !task.status });
    fetchTasks();
  };

  const filtered = tasks.filter(task => {
    if (filter === 'completed') return task.status;
    if (filter === 'pending') return !task.status;
    return true;
  });

  return (
    <div className="max-w-3xl mx-auto py-10 px-4">
      <div className="flex justify-between items-center mb-6">
        <h1 className="text-3xl font-bold text-blue-700">📋 Task Manager</h1>
        <Button onClick={handleLogout} className="bg-red-500 hover:bg-red-400  text-white">Logout</Button>
      </div>

      <div className="flex justify-between items-center mb-4">
        <div className="space-x-2">
          <Button onClick={() => setFilter('all')} className={filter === 'all' ? 'bg-blue-600 text-white' : 'bg-gray-100 text-gray-800 hover:bg-gray-200'}>All</Button>
          <Button onClick={() => setFilter('completed')} className={filter === 'completed' ? 'bg-green-600 text-white' : 'bg-gray-100 text-gray-800 hover:bg-gray-200'}>Completed</Button>
          <Button onClick={() => setFilter('pending')} className={filter === 'pending' ? 'bg-yellow-500 text-white' : 'bg-gray-100 text-gray-800 hover:bg-gray-200'}>Pending</Button>
        </div>
        <Button onClick={() => setShowModal(true)} className="bg-blue-600 text-white hover:bg-blue-700">➕ Add Task</Button>
      </div>

      {filtered.length === 0 ? (
        <p className="text-gray-400 text-center mt-10">No tasks found.</p>
      ) : (
        <ul className="space-y-3">
          {filtered.map(task => (
            <li
              key={task.id}
              className={`p-4 rounded-md shadow flex justify-between items-start border-l-4 ${
                task.status ? 'bg-green-50 border-green-500' : 'bg-yellow-50 border-yellow-500'
              }`}
            >
              <div>
                <p className={`text-lg font-semibold ${task.status ? 'line-through text-green-700' : 'text-yellow-800'}`}>
                  {task.title}
                </p>
                {task.note && <small className="text-gray-600">{task.note}</small>}
              </div>
              <div className="flex gap-2 mt-1">
                <Button onClick={() => handleToggle(task)} size="sm" className="bg-blue-500 text-white hover:bg-blue-600">
                  {task.status ? "Undo" : "Done"}
                </Button>
                <Button onClick={() => handleDelete(task.id)} size="sm" className="bg-red-500 text-white hover:bg-red-700">
                  Delete
                </Button>
              </div>
            </li>
          ))}
        </ul>
      )}

      {/* MODAL */}
      {showModal && (
        <div className="fixed inset-0 bg-opacity-70 flex items-center justify-center z-50">
          <div className="bg-white rounded-lg shadow-xl w-full max-w-md p-6 relative">
            <button
              onClick={() => setShowModal(false)}
              className="absolute top-2 right-3 text-gray-500 hover:text-red-700 text-xl font-bold"
              aria-label="Close"
            >
              ×
            </button>
            <h2 className="text-xl font-semibold text-blue-700 mb-4">Add New Task</h2>
            <TaskForm
              onAdd={() => {
                fetchTasks();
                setShowModal(false);
              }}
            />
          </div>
        </div>
      )}
    </div>
  );
}
