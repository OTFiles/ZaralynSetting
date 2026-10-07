.class Lcom/android/settings/SettingsFactoryDslAppsInstallService$5;
.super Ljava/lang/Object;
.source "SettingsFactoryDslAppsInstallService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsFactoryDslAppsInstallService;->showAlamrErrorDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;

.field final synthetic val$errorApkNames:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsFactoryDslAppsInstallService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    .line 724
    iput-object p1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$5;->this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    iput-object p2, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$5;->val$errorApkNames:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 727
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$5;->this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    invoke-virtual {v1}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 728
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$5;->this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    const v2, 0x7f12045b

    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$5;->this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    .line 729
    const v4, 0x7f120af4

    invoke-virtual {v3, v4}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$5;->val$errorApkNames:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 730
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$5;->this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    .line 731
    const v3, 0x7f12090b

    invoke-virtual {v2, v3}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/SettingsFactoryDslAppsInstallService$5$1;

    invoke-direct {v3, p0}, Lcom/android/settings/SettingsFactoryDslAppsInstallService$5$1;-><init>(Lcom/android/settings/SettingsFactoryDslAppsInstallService$5;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 738
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 739
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 740
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 741
    return-void
.end method
