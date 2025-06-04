import { useState } from 'react';
import { Input } from '../components/ui/input';
import { Textarea } from '../components/ui/textarea';
import { Button } from '../components/ui/button';
import API from '../api';

export default function TaskForm({ onAdd }) {
  const [form, setForm] = useState({ title: '', note: '' });

  const handleSubmit = async (e) => {
    e.preventDefault();
    await API.post('/tasks', form);
    setForm({ title: '', note: '' });
    onAdd();
  };

  return (
    <form onSubmit={handleSubmit} className="space-y-2">
      <Input
        placeholder="Task title"
        value={form.title}
        onChange={e => setForm({ ...form, title: e.target.value })}
      />
      <Textarea
        placeholder="Task note"
        value={form.note}
        onChange={e => setForm({ ...form, note: e.target.value })}
      />
      <Button type="submit" className='w-full bg-slate-100 cursor-pointer'>Add Task</Button>
    </form>
  );
}
