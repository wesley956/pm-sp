import seedContent from '@/lib/generated/seed-content.json';
import stats from '@/lib/generated/stats.json';
import { planRank } from '@/lib/utils';
import type { ContentItem, DashboardBundle, PlanSlug } from '@/lib/types';

export const demoContent = seedContent as ContentItem[];
export const demoStats = stats as {
  contents: number;
  flashcards: number;
  questions: number;
  disciplines: string[];
};

export function getDemoContentsByPlan(plan: PlanSlug) {
  return demoContent.filter((item) => planRank(item.minimum_plan ?? 'basic') <= planRank(plan));
}

export function getDemoDashboard(plan: PlanSlug = 'basic'): DashboardBundle {
  const available = getDemoContentsByPlan(plan);
  return {
    plan,
    subscriptionStatus: 'active',
    profileName: 'Aluno Demo',
    counters: {
      totalContents: demoStats.contents,
      availableContents: available.length,
      studiedContents: Math.min(12, available.length),
      totalAttempts: 137,
      correctAnswers: 91,
      pendingReviews: 6
    },
    focus: {
      weakTopics: ['Porcentagem', 'Crase', 'Regra de três'],
      today: available.slice(0, 3).map((item) => item.name)
    }
  };
}
