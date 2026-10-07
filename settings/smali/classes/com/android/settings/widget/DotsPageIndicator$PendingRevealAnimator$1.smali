.class Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator$1;
.super Ljava/lang/Object;
.source "DotsPageIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;-><init>(Lcom/android/settings/widget/DotsPageIndicator;ILcom/android/settings/widget/DotsPageIndicator$StartPredicate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

.field final synthetic val$this$0:Lcom/android/settings/widget/DotsPageIndicator;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;Lcom/android/settings/widget/DotsPageIndicator;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    .line 858
    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator$1;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    iput-object p2, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator$1;->val$this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 862
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator$1;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    iget-object v0, v0, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator$1;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    invoke-static {v1}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->access$1700(Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;)I

    move-result v1

    .line 863
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 862
    invoke-static {v0, v1, v2}, Lcom/android/settings/widget/DotsPageIndicator;->access$1600(Lcom/android/settings/widget/DotsPageIndicator;IF)V

    .line 864
    return-void
.end method
