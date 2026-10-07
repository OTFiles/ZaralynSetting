.class Lcom/android/settings/applications/ManageApplicationsSettings$10;
.super Ljava/lang/Object;
.source "ManageApplicationsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageApplicationsSettings;->showAppInstallLocationSettingDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageApplicationsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplicationsSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/ManageApplicationsSettings;

    .line 1791
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$10;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .line 1793
    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 1794
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$10;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_install_location"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1797
    :cond_0
    const/4 v1, 0x2

    if-ne v0, p2, :cond_1

    .line 1798
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$10;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "default_install_location"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1801
    :cond_1
    const/4 v0, 0x0

    if-ne v1, p2, :cond_2

    .line 1802
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$10;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_install_location"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1807
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$10;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_install_location"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1811
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1812
    return-void
.end method
