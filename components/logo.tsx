import Link from 'next/link';

export function Logo() {
  return (
    <Link href="/" className="logo">
      <span className="logo-mark">Q</span>
      <span>
        <strong>QAP Elite</strong>
        <small>sem enrolação</small>
      </span>
    </Link>
  );
}
