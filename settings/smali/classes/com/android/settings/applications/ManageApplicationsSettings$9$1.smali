.class Lcom/android/settings/applications/ManageApplicationsSettings$9$1;
.super Ljava/lang/Object;
.source "ManageApplicationsSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageApplicationsSettings$9;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/applications/ManageApplicationsSettings$9;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplicationsSettings$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/applications/ManageApplicationsSettings$9;

    .line 1693
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$9$1;->this$1:Lcom/android/settings/applications/ManageApplicationsSettings$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1696
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$9$1;->this$1:Lcom/android/settings/applications/ManageApplicationsSettings$9;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplicationsSettings$9;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$9$1;->this$1:Lcom/android/settings/applications/ManageApplicationsSettings$9;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplicationsSettings$9;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$300(Lcom/android/settings/applications/ManageApplicationsSettings;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1698
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$9$1;->this$1:Lcom/android/settings/applications/ManageApplicationsSettings$9;

    iget-object v1, v1, Lcom/android/settings/applications/ManageApplicationsSettings$9;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$600(Lcom/android/settings/applications/ManageApplicationsSettings;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1699
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$9$1;->this$1:Lcom/android/settings/applications/ManageApplicationsSettings$9;

    iget-object v1, v1, Lcom/android/settings/applications/ManageApplicationsSettings$9;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$600(Lcom/android/settings/applications/ManageApplicationsSettings;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    .line 1700
    .local v1, "tab":Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;
    iget-object v2, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    if-eqz v2, :cond_0

    .line 1701
    iget-object v2, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    invoke-virtual {v2}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->pause()V

    .line 1698
    .end local v1
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1704
    .end local v0
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$9$1;->this$1:Lcom/android/settings/applications/ManageApplicationsSettings$9;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplicationsSettings$9;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    if-eqz v0, :cond_2

    .line 1705
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$9$1;->this$1:Lcom/android/settings/applications/ManageApplicationsSettings$9;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplicationsSettings$9;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$9$1;->this$1:Lcom/android/settings/applications/ManageApplicationsSettings$9;

    iget-object v1, v1, Lcom/android/settings/applications/ManageApplicationsSettings$9;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$2500(Lcom/android/settings/applications/ManageApplicationsSettings;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->resume(I)V

    .line 1708
    :cond_2
    return-void
.end method
