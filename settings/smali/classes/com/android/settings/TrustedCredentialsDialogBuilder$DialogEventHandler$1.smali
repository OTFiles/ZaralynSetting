.class Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$1;
.super Ljava/lang/Object;
.source "TrustedCredentialsDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->onClickEnableOrDisable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

.field final synthetic val$certHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    .line 163
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$1;->this$0:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$1;->val$certHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 166
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$1;->this$0:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->access$100(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$1;->val$certHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-interface {v0, v1}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;->removeOrInstallCert(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$1;->this$0:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->access$200(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)V

    .line 168
    return-void
.end method
