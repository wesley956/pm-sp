export function cn(...classes: Array<string | false | null | undefined>) {
  return classes.filter(Boolean).join(' ');
}

export function slugify(value: string) {
  return value
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/[^a-zA-Z0-9]+/g, '-')
    .replace(/(^-|-$)/g, '')
    .toLowerCase();
}

export function planLabel(plan: 'basic' | 'complete') {
  return plan === 'complete' ? 'Plano Completo' : 'Plano Básico';
}

export function planRank(plan: 'basic' | 'complete') {
  return plan === 'complete' ? 2 : 1;
}
