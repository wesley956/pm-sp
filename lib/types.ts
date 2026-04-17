export type PlanSlug = 'basic' | 'complete';
export type SubscriptionStatus = 'trialing' | 'active' | 'past_due' | 'canceled';

export type ContentItem = {
  id?: string;
  slug: string;
  source_id?: string;
  name: string;
  topic: string;
  discipline: string;
  summary: string;
  theory: string;
  theory_blocks: { titulo: string; texto: string }[];
  key_points: string[];
  proof_tips: string[];
  examples: string[];
  common_errors: string[];
  minimum_plan?: PlanSlug;
  flashcards: { pergunta: string; resposta: string }[];
  questions: { enunciado: string; alternativas: string[]; correta: number; explicacao?: string }[];
};

export type DashboardBundle = {
  plan: PlanSlug;
  subscriptionStatus: SubscriptionStatus;
  profileName: string;
  counters: {
    totalContents: number;
    availableContents: number;
    studiedContents: number;
    totalAttempts: number;
    correctAnswers: number;
    pendingReviews: number;
  };
  focus: {
    weakTopics: string[];
    today: string[];
  };
};

export type Json = string | number | boolean | null | { [key: string]: Json } | Json[];
