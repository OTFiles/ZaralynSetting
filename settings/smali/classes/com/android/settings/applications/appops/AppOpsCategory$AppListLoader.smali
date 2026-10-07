.class public Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;
.super Landroid/content/AsyncTaskLoader;
.source "AppOpsCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appops/AppOpsCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppListLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader<",
        "Ljava/util/List<",
        "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mLastConfig:Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;

.field mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

.field final mState:Lcom/android/settings/applications/appops/AppOpsState;

.field final mTemplate:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/appops/AppOpsState;Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "state"    # Lcom/android/settings/applications/appops/AppOpsState;
    .param p3, "template"    # Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    .line 122
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v0, Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mLastConfig:Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;

    .line 123
    iput-object p2, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    .line 124
    iput-object p3, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mTemplate:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    .line 125
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 113
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    .line 137
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;>;"
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 144
    :cond_0
    move-object v0, p1

    .line 145
    .local v0, "oldApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;>;"
    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 156
    :cond_1
    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 159
    :cond_2
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    iget-object v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mTemplate:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    sget-object v2, Lcom/android/settings/applications/appops/AppOpsState;->LABEL_COMPARATOR:Ljava/util/Comparator;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/settings/applications/appops/AppOpsState;->buildState(Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;ILjava/lang/String;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .line 113
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->onCanceled(Ljava/util/List;)V

    return-void
.end method

.method public onCanceled(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    .line 203
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;>;"
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 208
    return-void
.end method

.method protected onReleaseResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    .line 240
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;>;"
    return-void
.end method

.method protected onReset()V
    .locals 3

    .line 214
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->onStopLoading()V

    .line 221
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 223
    iput-object v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 229
    iput-object v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    .line 231
    :cond_1
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->onContentChanged()V

    .line 169
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->deliverResult(Ljava/util/List;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    if-nez v0, :cond_1

    .line 177
    new-instance v0, Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;-><init>(Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;)V

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mLastConfig:Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;

    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 184
    .local v0, "configChange":Z
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_3

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->forceLoad()V

    .line 189
    :cond_3
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->cancelLoad()Z

    .line 197
    return-void
.end method
