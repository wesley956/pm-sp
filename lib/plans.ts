import type { PlanSlug } from '@/lib/types';

export const plans: Array<{
  slug: PlanSlug;
  name: string;
  monthlyPrice: string;
  cta: string;
  description: string;
  features: string[];
}> = [
  {
    slug: 'basic',
    name: 'Plano Básico',
    monthlyPrice: 'R$ 24,90/mês',
    cta: 'Começar no Básico',
    description: 'Para estudar rápido e direto ao ponto.',
    features: ['Conteúdo escrito objetivo', 'Resumo e teoria', 'Pontos-chave', 'Flashcards', 'Revisões básicas']
  },
  {
    slug: 'complete',
    name: 'Plano Completo',
    monthlyPrice: 'R$ 39,90/mês',
    cta: 'Assinar Completo',
    description: 'Para revisar, treinar e simular com o sistema inteiro.',
    features: ['Tudo do Básico', 'Questões e treino', 'Revisão inteligente', 'Simulados', 'Painel completo']
  }
];
