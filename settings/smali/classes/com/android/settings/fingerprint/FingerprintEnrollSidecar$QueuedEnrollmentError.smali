.class Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEnrollmentError;
.super Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEvent;
.source "FingerprintEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueuedEnrollmentError"
.end annotation


# instance fields
.field errMsgId:I

.field errString:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;


# direct methods
.method public constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;ILjava/lang/CharSequence;)V
    .locals 1
    .param p2, "errMsgId"    # I
    .param p3, "errString"    # Ljava/lang/CharSequence;

    .line 87
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEnrollmentError;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEvent;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;)V

    .line 88
    iput p2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEnrollmentError;->errMsgId:I

    .line 89
    iput-object p3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEnrollmentError;->errString:Ljava/lang/CharSequence;

    .line 90
    return-void
.end method


# virtual methods
.method public send(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;

    .line 94
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEnrollmentError;->errMsgId:I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEnrollmentError;->errString:Ljava/lang/CharSequence;

    invoke-interface {p1, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;->onEnrollmentError(ILjava/lang/CharSequence;)V

    .line 95
    return-void
.end method
