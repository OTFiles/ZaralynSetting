.class Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter$2;
.super Ljava/lang/Object;
.source "ManageApplicationsSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->onRebuildComplete(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    .line 953
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 956
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->access$1300(Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;)Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->access$1300(Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;)Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/ManageApplicationsSettings;->updateCurrentTab(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;Z)V

    .line 957
    return-void
.end method
