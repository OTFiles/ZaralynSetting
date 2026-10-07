.class Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageApplicationsSettings.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/Filterable;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplicationsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationsAdapter"
.end annotation


# instance fields
.field private final mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field mCurFilterPrefix:Ljava/lang/CharSequence;

.field public mCurrentView:Landroid/view/View;

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/widget/Filter;

.field private final mFilterMode:I

.field private mHasReceivedLoadEntries:Z

.field private mLastSortMode:I

.field private mResumed:Z

.field private final mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private final mState:Lcom/android/settingslib/applications/ApplicationsState;

.field private final mTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

.field private mWaitingForData:Z

.field private mWhichSize:I


# direct methods
.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;I)V
    .locals 3
    .param p1, "state"    # Lcom/android/settingslib/applications/ApplicationsState;
    .param p2, "tab"    # Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;
    .param p3, "filterMode"    # I

    .line 781
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 736
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    .line 741
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mLastSortMode:I

    .line 743
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mWhichSize:I

    .line 745
    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    .line 747
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mCurrentView:Landroid/view/View;

    .line 753
    new-instance v0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter$1;-><init>(Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    .line 782
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 783
    invoke-virtual {p1, p0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 784
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===divhee=============ApplicationsAdapter==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iput-object p2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    .line 786
    iget-object v0, p2, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 787
    iput p3, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mFilterMode:I

    .line 788
    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    .line 730
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 730
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;)Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    .line 730
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    return-object v0
.end method


# virtual methods
.method applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .line 912
    .local p2, "origEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 915
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 916
    .local v0, "prefixStr":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 918
    .local v1, "newEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 919
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 920
    .local v3, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    invoke-virtual {v3}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->getNormalizedLabel()Ljava/lang/String;

    move-result-object v4

    .line 921
    .local v4, "nlabel":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 922
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    .end local v3
    .end local v4
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 925
    .end local v2
    :cond_3
    return-object v1

    .line 913
    .end local v0
    .end local v1
    :cond_4
    :goto_1
    return-object p2
.end method

.method public getAppEntry(I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 1
    .param p1, "position"    # I

    .line 1031
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1023
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 1076
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 1027
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 1035
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1041
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v0, p2}, Lcom/android/settings/applications/AppViewHolderSettings;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/applications/AppViewHolderSettings;

    move-result-object v0

    .line 1042
    .local v0, "holder":Lcom/android/settings/applications/AppViewHolderSettings;
    iget-object p2, v0, Lcom/android/settings/applications/AppViewHolderSettings;->rootView:Landroid/view/View;

    .line 1045
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1046
    .local v1, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    monitor-enter v1

    .line 1047
    :try_start_0
    iput-object v1, v0, Lcom/android/settings/applications/AppViewHolderSettings;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1048
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1049
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolderSettings;->appName:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1051
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v2, v1}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 1052
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1053
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolderSettings;->appIcon:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1055
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget-object v2, v2, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/applications/AppViewHolderSettings;->updateSizeText(Ljava/lang/CharSequence;I)V

    .line 1056
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 1057
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolderSettings;->disabled:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1058
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolderSettings;->disabled:Landroid/widget/TextView;

    const v3, 0x7f12094e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1059
    :cond_2
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_3

    .line 1060
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolderSettings;->disabled:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1061
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolderSettings;->disabled:Landroid/widget/TextView;

    const v3, 0x7f12053c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1063
    :cond_3
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolderSettings;->disabled:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1067
    :goto_0
    monitor-exit v1

    .line 1068
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1069
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    iput-object p2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mCurrentView:Landroid/view/View;

    .line 1071
    return-object p2

    .line 1067
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onAllSizesComputed()V
    .locals 2

    .line 997
    iget v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mLastSortMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 998
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->rebuild(Z)V

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->updateStorageUsage()V

    .line 1001
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .line 1008
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 1

    .line 1016
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    if-nez v0, :cond_0

    .line 1017
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    .line 1018
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->rebuild(Z)V

    .line 1020
    :cond_0
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1081
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1082
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .line 971
    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    .line 964
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->rebuild(Z)V

    .line 965
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 975
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 976
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/AppViewHolderSettings;

    .line 977
    .local v2, "holder":Lcom/android/settings/applications/AppViewHolderSettings;
    iget-object v3, v2, Lcom/android/settings/applications/AppViewHolderSettings;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 978
    iget-object v3, v2, Lcom/android/settings/applications/AppViewHolderSettings;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    monitor-enter v3

    .line 979
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget-object v4, v4, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v5, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v2, v4, v5}, Lcom/android/settings/applications/AppViewHolderSettings;->updateSizeText(Ljava/lang/CharSequence;I)V

    .line 980
    monitor-exit v3

    .line 981
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, v2, Lcom/android/settings/applications/AppViewHolderSettings;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget-object v4, v4, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v4}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$1600(Lcom/android/settings/applications/ManageApplicationsSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mLastSortMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 987
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->rebuild(Z)V

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->updateStorageUsage()V

    .line 990
    return-void

    .line 980
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 975
    .end local v2
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 993
    .end local v1
    :cond_2
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 938
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->access$1500(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->access$1500(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 941
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->access$1400(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->access$1400(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 945
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->access$1500(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 946
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mWaitingForData:Z

    .line 947
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 948
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 950
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 951
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->updateStorageUsage()V

    .line 952
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    if-eqz v0, :cond_1

    .line 953
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$400(Lcom/android/settings/applications/ManageApplicationsSettings;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter$2;-><init>(Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 959
    :cond_1
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========divhee=========onRebuildComplete========="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 1
    .param p1, "running"    # Z

    .line 931
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 934
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .line 811
    const-string v0, "ManageApplicationsSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "divhee pause reset  mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    .line 813
    const-string v0, "ManageApplicationsSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "333divhee pause reset  mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mResumed:Z

    .line 815
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onPause()V

    .line 817
    :cond_0
    return-void
.end method

.method public rebuild(I)V
    .locals 1
    .param p1, "sort"    # I

    .line 825
    iget v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mLastSortMode:I

    if-ne p1, v0, :cond_0

    .line 826
    return-void

    .line 828
    :cond_0
    iput p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mLastSortMode:I

    .line 829
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->rebuild(Z)V

    .line 830
    return-void
.end method

.method public rebuild(Z)V
    .locals 8
    .param p1, "eraseold"    # Z

    .line 834
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mResumed:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v2}, Lcom/android/settingslib/applications/ApplicationsState$Session;->nowIsResumed()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "====divhee=========rebuild============"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->nowIsResumed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 836
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onResume()V

    .line 840
    :cond_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    .line 841
    .local v0, "emulated":Z
    if-eqz v0, :cond_2

    .line 842
    iput v4, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mWhichSize:I

    goto :goto_1

    .line 844
    :cond_2
    iput v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mWhichSize:I

    .line 846
    :goto_1
    iget v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mFilterMode:I

    packed-switch v1, :pswitch_data_0

    .line 863
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->ALL_SLEEP_ENABLED_FILTER:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    .line 864
    .local v1, "filterObj":Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;
    sget-object v2, Lcom/android/settings/applications/ManageApplicationsSettings;->mAppsSearchKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;->resetFilterKey(Ljava/lang/String;)V

    goto :goto_2

    .line 859
    .end local v1
    :pswitch_0    # 0x3
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->DISABLED_FILTER:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    .line 860
    .restart local v1
    sget-object v2, Lcom/android/settings/applications/ManageApplicationsSettings;->mAppsSearchKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;->resetFilterKey(Ljava/lang/String;)V

    .line 861
    goto :goto_2

    .line 852
    .end local v1
    :pswitch_1    # 0x2
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->ON_SD_CARD_FILTER:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    .line 853
    .restart local v1
    sget-object v2, Lcom/android/settings/applications/ManageApplicationsSettings;->mAppsSearchKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;->resetFilterKey(Ljava/lang/String;)V

    .line 854
    if-nez v0, :cond_3

    .line 855
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mWhichSize:I

    goto :goto_2

    .line 848
    .end local v1
    :pswitch_2    # 0x1
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->THIRD_PARTY_FILTER:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    .line 849
    .restart local v1
    sget-object v2, Lcom/android/settings/applications/ManageApplicationsSettings;->mAppsSearchKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;->resetFilterKey(Ljava/lang/String;)V

    .line 850
    nop

    .line 867
    :cond_3
    :goto_2
    iget v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mLastSortMode:I

    const/4 v5, 0x5

    if-eq v2, v5, :cond_4

    .line 882
    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    goto :goto_3

    .line 869
    :cond_4
    iget v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mWhichSize:I

    packed-switch v2, :pswitch_data_1

    .line 877
    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 878
    .local v2, "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    goto :goto_3

    .line 874
    .end local v2
    :pswitch_3    # 0x2
    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 875
    .restart local v2
    goto :goto_3

    .line 871
    .end local v2
    :pswitch_4    # 0x1
    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 872
    .restart local v2
    nop

    .line 882
    :goto_3
    nop

    .line 885
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 886
    invoke-virtual {v5, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v5

    .line 887
    .local v5, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    if-nez v5, :cond_5

    if-nez p1, :cond_5

    .line 889
    return-void

    .line 891
    :cond_5
    iput-object v5, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 892
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    .line 893
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    goto :goto_4

    .line 895
    :cond_6
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 897
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 898
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-virtual {v6}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->updateStorageUsage()V

    .line 900
    if-nez v5, :cond_7

    .line 901
    iput-boolean v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mWaitingForData:Z

    .line 902
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-static {v3}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->access$1400(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;)Landroid/view/View;

    move-result-object v3

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 903
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-static {v3}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->access$1500(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 905
    :cond_7
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-static {v3}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->access$1400(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 906
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-static {v3}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->access$1500(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 908
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4    # 0x1
        :pswitch_3    # 0x2
    .end packed-switch
.end method

.method public release()V
    .locals 3

    .line 820
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===divhee=============ApplicationsAdapter=release=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onDestroy()V

    .line 822
    return-void
.end method

.method public resume(IZ)V
    .locals 4
    .param p1, "sort"    # I
    .param p2, "forceUpdate"    # Z

    .line 795
    const-string v0, "ManageApplicationsSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "divhee Resume reset  mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mResumed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 798
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mResumed:Z

    .line 799
    const-string v0, "ManageApplicationsSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "divhee 222 Resume reset  mResumed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mResumed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onResume()V

    .line 801
    iput p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->mLastSortMode:I

    .line 802
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_0

    .line 803
    :cond_0
    if-eqz p2, :cond_1

    .line 804
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_0

    .line 806
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->rebuild(I)V

    .line 808
    :goto_0
    return-void
.end method
