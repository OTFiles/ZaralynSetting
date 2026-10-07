.class Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter$1;
.super Landroid/widget/Filter;
.source "ManageApplicationsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;
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

    .line 753
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter$1;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .line 756
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter$1;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter$1;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    .line 757
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->access$1100(Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 758
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 759
    .local v1, "fr":Landroid/widget/Filter$FilterResults;
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 760
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 761
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .line 766
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter$1;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    iput-object p1, v0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    .line 767
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter$1;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->access$1202(Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 768
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter$1;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 769
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter$1;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->access$1300(Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;)Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->updateStorageUsage()V

    .line 770
    return-void
.end method
