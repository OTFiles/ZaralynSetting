.class Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;
.super Ljava/lang/Object;
.source "ConfirmDeviceCredentialBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

.field final synthetic val$hasAlternateButton:Z


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    .line 137
    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    iput-boolean p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;->val$hasAlternateButton:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 140
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;->val$hasAlternateButton:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 144
    return-void
.end method
