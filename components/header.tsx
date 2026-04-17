import Link from 'next/link';
import { Logo } from '@/components/logo';

export function Header() {
  return (
    <header className="site-header">
      <div className="container header-row">
        <Logo />
        <nav className="nav-row">
          <Link href="/">Início</Link>
          <Link href="/dashboard">Dashboard</Link>
          <Link href="/biblioteca">Biblioteca</Link>
          <Link href="/revisoes">Revisões</Link>
          <Link href="/simulados">Simulados</Link>
          <Link href="/admin">Admin</Link>
          <Link href="/auth" className="button secondary">Entrar</Link>
        </nav>
      </div>
    </header>
  );
}
