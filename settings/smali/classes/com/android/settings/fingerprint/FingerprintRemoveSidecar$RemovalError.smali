.class Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$RemovalError;
.super Ljava/lang/Object;
.source "FingerprintRemoveSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemovalError"
.end annotation


# instance fields
.field errMsgId:I

.field errString:Ljava/lang/CharSequence;

.field fingerprint:Landroid/hardware/fingerprint/Fingerprint;

.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;


# direct methods
.method public constructor <init>(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 0
    .param p2, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p3, "errMsgId"    # I
    .param p4, "errString"    # Ljava/lang/CharSequence;

    .line 46
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$RemovalError;->this$0:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$RemovalError;->fingerprint:Landroid/hardware/fingerprint/Fingerprint;

    .line 48
    iput p3, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$RemovalError;->errMsgId:I

    .line 49
    iput-object p4, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$RemovalError;->errString:Ljava/lang/CharSequence;

    .line 50
    return-void
.end method
