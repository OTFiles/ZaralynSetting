.class Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$3;
.super Ljava/lang/Object;
.source "FingerprintLocationAnimationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->startAlphaAnimation()V
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

    .line 159
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$3;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 162
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$3;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->access$300(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$3;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->invalidate()V

    .line 164
    return-void
.end method
