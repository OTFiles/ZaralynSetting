.class Lcom/android/settings/applications/ManageApplicationsSettings$12;
.super Ljava/lang/Object;
.source "ManageApplicationsSettings.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplicationsSettings;
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

    .line 1972
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$12;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 1975
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$12;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/ManageApplicationsSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 1976
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$12;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$12;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v2}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$2100(Lcom/android/settings/applications/ManageApplicationsSettings;)Landroid/widget/PopupMenu;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$2700(Lcom/android/settings/applications/ManageApplicationsSettings;Landroid/view/Menu;)V

    .line 1977
    return v0
.end method
