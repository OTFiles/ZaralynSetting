.class public final synthetic Lcom/android/settings/dashboard/suggestions/-$$Lambda$SuggestionAdapter$3YCJShAgHMZGvTmpJ4rD8V_2WkA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;

.field private final synthetic f$1:Landroid/service/settings/suggestions/Suggestion;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;Landroid/service/settings/suggestions/Suggestion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/suggestions/-$$Lambda$SuggestionAdapter$3YCJShAgHMZGvTmpJ4rD8V_2WkA;->f$0:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;

    iput-object p2, p0, Lcom/android/settings/dashboard/suggestions/-$$Lambda$SuggestionAdapter$3YCJShAgHMZGvTmpJ4rD8V_2WkA;->f$1:Landroid/service/settings/suggestions/Suggestion;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/suggestions/-$$Lambda$SuggestionAdapter$3YCJShAgHMZGvTmpJ4rD8V_2WkA;->f$0:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/suggestions/-$$Lambda$SuggestionAdapter$3YCJShAgHMZGvTmpJ4rD8V_2WkA;->f$1:Landroid/service/settings/suggestions/Suggestion;

    invoke-static {v0, v1, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->lambda$onBindViewHolder$0(Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;Landroid/service/settings/suggestions/Suggestion;Landroid/view/View;)V

    return-void
.end method
