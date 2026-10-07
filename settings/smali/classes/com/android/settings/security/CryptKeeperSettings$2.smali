.class Lcom/android/settings/security/CryptKeeperSettings$2;
.super Ljava/lang/Object;
.source "CryptKeeperSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/security/CryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/security/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/security/CryptKeeperSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/security/CryptKeeperSettings;

    .line 91
    iput-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings$2;->this$0:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings$2;->this$0:Lcom/android/settings/security/CryptKeeperSettings;

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lcom/android/settings/security/CryptKeeperSettings;->access$300(Lcom/android/settings/security/CryptKeeperSettings;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/security/CryptKeeperSettings$2;->this$0:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-virtual {v1}, Lcom/android/settings/security/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12042a

    .line 97
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120429

    .line 98
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 103
    :cond_0
    return-void
.end method
