.class Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$1;
.super Ljava/lang/Object;
.source "FingerprintLocationAnimationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->startRadiusAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;

    .line 126
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 129
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->access$002(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;F)F

    .line 130
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->invalidate()V

    .line 131
    return-void
.end method
