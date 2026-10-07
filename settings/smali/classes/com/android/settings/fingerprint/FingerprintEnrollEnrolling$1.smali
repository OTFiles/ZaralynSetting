.class Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    .line 130
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 133
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->access$008(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)I

    .line 135
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->access$000(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->access$100(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->access$300(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->access$200(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 142
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->access$300(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->access$200(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 145
    :cond_3
    :goto_0
    return v1
.end method
