.class Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HighlightablePreferenceGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->removeHighlightBackground(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    .line 206
    iput-object p1, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$1;->this$0:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    iput-object p2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 211
    iget-object v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$1;->val$v:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$1;->this$0:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    invoke-static {v1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->access$000(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 212
    return-void
.end method
