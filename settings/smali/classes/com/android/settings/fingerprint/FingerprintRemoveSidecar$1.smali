.class Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$1;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "FingerprintRemoveSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    .line 54
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "errMsgId"    # I
    .param p3, "errString"    # Ljava/lang/CharSequence;

    .line 67
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->access$000(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;)Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->access$000(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;)Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;->onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->access$100(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;)Ljava/util/Queue;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$RemovalError;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$RemovalError;-><init>(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->access$202(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;Landroid/hardware/fingerprint/Fingerprint;)Landroid/hardware/fingerprint/Fingerprint;

    .line 73
    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 2
    .param p1, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "remaining"    # I

    .line 57
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->access$000(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;)Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->access$000(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;)Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;->onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->access$100(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->access$202(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;Landroid/hardware/fingerprint/Fingerprint;)Landroid/hardware/fingerprint/Fingerprint;

    .line 63
    return-void
.end method
