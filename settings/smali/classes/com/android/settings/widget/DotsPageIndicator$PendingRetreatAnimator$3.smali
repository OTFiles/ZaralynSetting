.class Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DotsPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;-><init>(Lcom/android/settings/widget/DotsPageIndicator;IIILcom/android/settings/widget/DotsPageIndicator$StartPredicate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

.field final synthetic val$dotsToHide:[I

.field final synthetic val$initialX1:F

.field final synthetic val$initialX2:F

.field final synthetic val$this$0:Lcom/android/settings/widget/DotsPageIndicator;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;Lcom/android/settings/widget/DotsPageIndicator;[IFF)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    .line 821
    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iput-object p2, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->val$this$0:Lcom/android/settings/widget/DotsPageIndicator;

    iput-object p3, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->val$dotsToHide:[I

    iput p4, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->val$initialX1:F

    iput p5, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->val$initialX2:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 836
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object v0, v0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1202(Lcom/android/settings/widget/DotsPageIndicator;F)F

    .line 837
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object v0, v0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-static {v0, v1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1302(Lcom/android/settings/widget/DotsPageIndicator;F)F

    .line 838
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object v0, v0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-virtual {v0}, Lcom/android/settings/widget/DotsPageIndicator;->postInvalidateOnAnimation()V

    .line 839
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 824
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object v0, v0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-static {v0}, Lcom/android/settings/widget/DotsPageIndicator;->access$1400(Lcom/android/settings/widget/DotsPageIndicator;)V

    .line 825
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object v0, v0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-static {v0}, Lcom/android/settings/widget/DotsPageIndicator;->access$1500(Lcom/android/settings/widget/DotsPageIndicator;)V

    .line 827
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->val$dotsToHide:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 828
    .local v3, "dot":I
    iget-object v4, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object v4, v4, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    const v5, 0x3727c5ac    # 1.0E-5f

    invoke-static {v4, v3, v5}, Lcom/android/settings/widget/DotsPageIndicator;->access$1600(Lcom/android/settings/widget/DotsPageIndicator;IF)V

    .line 827
    .end local v3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object v0, v0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->val$initialX1:F

    invoke-static {v0, v1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1202(Lcom/android/settings/widget/DotsPageIndicator;F)F

    .line 831
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object v0, v0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->val$initialX2:F

    invoke-static {v0, v1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1302(Lcom/android/settings/widget/DotsPageIndicator;F)F

    .line 832
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object v0, v0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-virtual {v0}, Lcom/android/settings/widget/DotsPageIndicator;->postInvalidateOnAnimation()V

    .line 833
    return-void
.end method
