.class Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$4$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$4;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$4;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$4;

    .line 409
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$4$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$4$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$4;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->access$700(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    .line 413
    return-void
.end method
