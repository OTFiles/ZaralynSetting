.class public final synthetic Lcom/android/settings/dashboard/suggestions/-$$Lambda$SuggestionAdapter$o_nlX1JhE-RQCl3p5ch8A_R_uN0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Landroid/service/settings/suggestions/Suggestion;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;Ljava/lang/String;Landroid/service/settings/suggestions/Suggestion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/suggestions/-$$Lambda$SuggestionAdapter$o_nlX1JhE-RQCl3p5ch8A_R_uN0;->f$0:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;

    iput-object p2, p0, Lcom/android/settings/dashboard/suggestions/-$$Lambda$SuggestionAdapter$o_nlX1JhE-RQCl3p5ch8A_R_uN0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/dashboard/suggestions/-$$Lambda$SuggestionAdapter$o_nlX1JhE-RQCl3p5ch8A_R_uN0;->f$2:Landroid/service/settings/suggestions/Suggestion;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/dashboard/suggestions/-$$Lambda$SuggestionAdapter$o_nlX1JhE-RQCl3p5ch8A_R_uN0;->f$0:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/suggestions/-$$Lambda$SuggestionAdapter$o_nlX1JhE-RQCl3p5ch8A_R_uN0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/dashboard/suggestions/-$$Lambda$SuggestionAdapter$o_nlX1JhE-RQCl3p5ch8A_R_uN0;->f$2:Landroid/service/settings/suggestions/Suggestion;

    invoke-static {v0, v1, v2, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->lambda$onBindViewHolder$1(Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;Ljava/lang/String;Landroid/service/settings/suggestions/Suggestion;Landroid/view/View;)V

    return-void
.end method
