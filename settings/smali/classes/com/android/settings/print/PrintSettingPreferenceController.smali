.class public Lcom/android/settings/print/PrintSettingPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "PrintSettingPreferenceController.java"

# interfaces
.implements Landroid/print/PrintManager$PrintJobStateChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final KEY_PRINTING_SETTINGS:Ljava/lang/String; = "connected_device_printing"


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private final mPrintManager:Landroid/print/PrintManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    const-string v0, "connected_device_printing"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 55
    const-string v0, "print"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getGlobalPrintManagerForUser(I)Landroid/print/PrintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mPrintManager:Landroid/print/PrintManager;

    .line 57
    return-void
.end method

.method static shouldShowToUser(Landroid/print/PrintJobInfo;)Z
    .locals 2
    .param p0, "printJob"    # Landroid/print/PrintJobInfo;

    .line 129
    invoke-virtual {p0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 137
    const/4 v0, 0x0

    return v0

    .line 134
    :cond_0
    :pswitch_0    # 0x3 0x4 0x2
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0    # 0x2
        :pswitch_0    # 0x3
        :pswitch_0    # 0x4
    .end packed-switch
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 69
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.print"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 61
    :goto_0
    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 9

    .line 95
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v0}, Landroid/print/PrintManager;->getPrintJobs()Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJob;>;"
    const/4 v1, 0x0

    .line 98
    .local v1, "numActivePrintJobs":I
    if-eqz v0, :cond_1

    .line 99
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrintJob;

    .line 100
    .local v3, "job":Landroid/print/PrintJob;
    invoke-virtual {v3}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/print/PrintSettingPreferenceController;->shouldShowToUser(Landroid/print/PrintJobInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 103
    .end local v3
    :cond_0
    goto :goto_0

    .line 106
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_2

    .line 107
    iget-object v4, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10002e

    new-array v3, v3, [Ljava/lang/Object;

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    .line 107
    invoke-virtual {v4, v5, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 110
    :cond_2
    iget-object v4, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mPrintManager:Landroid/print/PrintManager;

    .line 111
    invoke-virtual {v4, v3}, Landroid/print/PrintManager;->getPrintServices(I)Ljava/util/List;

    move-result-object v4

    .line 112
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 115
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 116
    .local v5, "count":I
    iget-object v6, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10002f

    new-array v3, v3, [Ljava/lang/Object;

    .line 117
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v2

    .line 116
    invoke-virtual {v6, v7, v5, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 113
    .end local v5
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120a55

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    .locals 1
    .param p1, "printJobId"    # Landroid/print/PrintJobId;

    .line 83
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 84
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v0, p0}, Landroid/print/PrintManager;->addPrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 74
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v0, p0}, Landroid/print/PrintManager;->removePrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 79
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 89
    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    const-string v1, "no_printing"

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 91
    return-void
.end method
