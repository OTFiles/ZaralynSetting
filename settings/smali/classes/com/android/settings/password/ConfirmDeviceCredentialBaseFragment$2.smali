.class Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$2;
.super Ljava/lang/Object;
.source "ConfirmDeviceCredentialBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    .line 371
    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$2;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$2;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mErrorTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    return-void
.end method
