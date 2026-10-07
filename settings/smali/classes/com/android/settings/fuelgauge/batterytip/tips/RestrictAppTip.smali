.class public Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;
.super Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
.source "RestrictAppTip.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private mRestrictAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 164
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/android/settings/fuelgauge/batterytip/AppInfo;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "appInfo"    # Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-direct {p0, v1, p1, v2}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(IIZ)V

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mRestrictAppList:Ljava/util/List;

    .line 51
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mRestrictAppList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mNeedUpdate:Z

    .line 53
    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 3
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p2, "restrictApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/batterytip/AppInfo;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-direct {p0, v1, p1, v2}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(IIZ)V

    .line 44
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mRestrictAppList:Ljava/util/List;

    .line 45
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mNeedUpdate:Z

    .line 46
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(Landroid/os/Parcel;)V

    .line 58
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mRestrictAppList:Ljava/util/List;

    .line 59
    return-void
.end method


# virtual methods
.method public getIconId()I
    .locals 2

    .line 87
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 88
    const v0, 0x7f0801bb

    goto :goto_0

    .line 89
    :cond_0
    const v0, 0x7f080136

    .line 87
    :goto_0
    return v0
.end method

.method public getRestrictAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mRestrictAppList:Ljava/util/List;

    return-object v0
.end method

.method public getRestrictAppsString(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v0, "appLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mRestrictAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 138
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mRestrictAppList:Ljava/util/List;

    .line 139
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    iget-object v3, v3, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    .line 138
    invoke-static {p1, v3}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v1
    .end local v2
    :cond_0
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mRestrictAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 77
    .local v0, "num":I
    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mRestrictAppList:Ljava/util/List;

    .line 78
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    iget-object v2, v2, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    .line 77
    invoke-static {p1, v2}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 78
    :cond_0
    const-string v2, ""

    .line 79
    .local v2, "appLabel":Ljava/lang/CharSequence;
    :goto_0
    iget v3, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 80
    const v3, 0x7f10000b

    goto :goto_1

    .line 81
    :cond_1
    const v3, 0x7f10000d

    .line 82
    .local v3, "resId":I
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v4

    invoke-virtual {v5, v3, v0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mRestrictAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 64
    .local v0, "num":I
    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mRestrictAppList:Ljava/util/List;

    .line 65
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    iget-object v2, v2, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    .line 64
    invoke-static {p1, v2}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 65
    :cond_0
    const-string v2, ""

    .line 66
    .local v2, "appLabel":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 68
    .local v3, "resources":Landroid/content/res/Resources;
    iget v4, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 69
    const v4, 0x7f10000c

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v1

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v5

    .line 69
    invoke-virtual {v3, v4, v0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 71
    :cond_1
    const v4, 0x7f10000e

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 68
    :goto_1
    return-object v1
.end method

.method public log(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "metricsFeatureProvider"    # Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 112
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mState:I

    const/16 v1, 0x543

    invoke-virtual {p2, p1, v1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 114
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mState:I

    if-nez v0, :cond_1

    .line 115
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mRestrictAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 116
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mRestrictAppList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    .line 117
    .local v2, "appInfo":Lcom/android/settings/fuelgauge/batterytip/AppInfo;
    iget-object v3, v2, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->anomalyTypes:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 118
    .local v4, "anomalyType":Ljava/lang/Integer;
    const/16 v5, 0x549

    iget-object v6, v2, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/util/Pair;

    const/4 v8, 0x0

    const/16 v9, 0x556

    .line 121
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    aput-object v9, v7, v8

    .line 118
    invoke-virtual {p2, p1, v5, v6, v7}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 122
    .end local v4
    goto :goto_1

    .line 115
    .end local v2
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .end local v0
    .end local v1
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mRestrictAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 150
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mRestrictAppList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    .line 151
    .local v3, "appInfo":Lcom/android/settings/fuelgauge/batterytip/AppInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .end local v3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v1
    .end local v2
    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateState(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 4
    .param p1, "tip"    # Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    .line 94
    iget v0, p1, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 96
    iput v2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mState:I

    .line 97
    move-object v0, p1

    check-cast v0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mRestrictAppList:Ljava/util/List;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mRestrictAppList:Ljava/util/List;

    .line 98
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mShowDialog:Z

    goto :goto_0

    .line 99
    :cond_0
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mState:I

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 101
    iput v1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mState:I

    .line 102
    iput-boolean v2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mShowDialog:Z

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mState:I

    .line 105
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->shouldShowDialog()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mShowDialog:Z

    .line 106
    move-object v0, p1

    check-cast v0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mRestrictAppList:Ljava/util/List;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mRestrictAppList:Ljava/util/List;

    .line 108
    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 160
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->writeToParcel(Landroid/os/Parcel;I)V

    .line 161
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mRestrictAppList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 162
    return-void
.end method
