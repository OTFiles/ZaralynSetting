.class Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;
.super Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
.source "FingerprintEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    .line 180
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 207
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->access$400(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->access$400(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->access$500(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEnrollmentError;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEnrollmentError;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->access$602(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;Z)Z

    .line 213
    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .line 198
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->access$400(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->access$400(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;->onEnrollmentHelp(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->access$500(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEnrollmentHelp;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEnrollmentHelp;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :goto_0
    return-void
.end method

.method public onEnrollmentProgress(I)V
    .locals 4
    .param p1, "remaining"    # I

    .line 184
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->access$100(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->access$102(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;I)I

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->access$202(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;I)I

    .line 188
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->access$302(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;Z)Z

    .line 189
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->access$400(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->access$400(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->access$100(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;->onEnrollmentProgressChange(II)V

    goto :goto_1

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->access$500(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEnrollmentProgress;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->access$100(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)I

    move-result v3

    invoke-direct {v1, v2, v3, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEnrollmentProgress;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :goto_1
    return-void
.end method
