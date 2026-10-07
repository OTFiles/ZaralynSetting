.class public Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "PortraitAppInvertedScreenPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static onlySignleTime:J


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPortraitApp180Roate:Landroid/support/v14/preference/SwitchPreference;

.field private mRunnable:Ljava/lang/Runnable;

.field private mThisTimeOnlySignleTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->onlySignleTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mThisTimeOnlySignleTime:J

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mHandler:Landroid/os/Handler;

    .line 42
    new-instance v0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController$1;-><init>(Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mRunnable:Ljava/lang/Runnable;

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->onlySignleTime:J

    .line 69
    sget-wide v0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->onlySignleTime:J

    iput-wide v0, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mThisTimeOnlySignleTime:J

    .line 70
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 94
    const-string v0, "portrait_app_180_roate"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->setVisible(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 95
    return-void

    .line 97
    :cond_0
    const-string v0, "portrait_app_180_roate"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mPortraitApp180Roate:Landroid/support/v14/preference/SwitchPreference;

    .line 98
    iget-object v0, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mPortraitApp180Roate:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setPersistent(Z)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mPortraitApp180Roate:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->updatePortraitApp180Roate(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 101
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 88
    const-string v0, "portrait_app_180_roate"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 8

    .line 74
    const-string v0, "persist.sys.portrait.rotate"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "portraitAppStatus":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "0"

    const-string v3, "1"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 76
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 77
    .local v2, "iPA180REnable":I
    :goto_0
    if-eq v2, v3, :cond_1

    .line 78
    iget-object v4, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    iget-wide v4, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mThisTimeOnlySignleTime:J

    sget-wide v6, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->onlySignleTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 80
    iget-object v4, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    :cond_1
    if-eq v2, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 129
    :try_start_0
    const-string v0, "persist.sys.portrait.rotate"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "portraitAppStatus":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "0"

    const-string v3, "1"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 132
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 133
    .local v2, "iPA180REnable":I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    .line 134
    rsub-int/lit8 v2, v2, 0x1

    .line 136
    :try_start_1
    const-string v3, "persist.sys.portrait.rotate"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 137
    :catch_0
    move-exception v3

    .line 140
    :goto_1
    const-wide/16 v5, 0x1f4

    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 142
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 141
    :catch_1
    move-exception v3

    .line 143
    :goto_2
    :try_start_3
    iget-object v3, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 144
    iget-wide v5, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mThisTimeOnlySignleTime:J

    sget-wide v7, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->onlySignleTime:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_1

    .line 145
    iget-object v3, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    .end local v0
    .end local v1
    .end local v2
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    nop

    .line 152
    return v4

    .line 148
    :catch_2
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "PortraitInvertedScreen"

    const-string v2, "====divhee=================exchange=status=fail==="

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    const/4 v1, 0x0

    return v1
.end method

.method public releaseController()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 53
    :cond_0
    return-void
.end method

.method public updatePortraitApp180Roate(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 8
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 104
    iget-object v0, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mPortraitApp180Roate:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_5

    .line 105
    const-string v0, "persist.sys.portrait.rotate"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "portraitAppStatus":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "0"

    const-string v3, "1"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 107
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 108
    .local v2, "iPA180REnable":I
    :goto_0
    const/4 v4, 0x0

    if-eq v2, v3, :cond_4

    .line 109
    iget-object v3, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mPortraitApp180Roate:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    if-eq v3, v7, :cond_3

    .line 110
    iget-object v3, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mPortraitApp180Roate:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    iget-object v3, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mPortraitApp180Roate:Landroid/support/v14/preference/SwitchPreference;

    if-ne v2, v6, :cond_2

    move v5, v6

    nop

    :cond_2
    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 112
    iget-object v3, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mPortraitApp180Roate:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    :cond_3
    iget-object v3, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    iget-wide v3, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mThisTimeOnlySignleTime:J

    sget-wide v5, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->onlySignleTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    .line 116
    iget-object v3, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 118
    :cond_4
    if-eqz p1, :cond_5

    .line 119
    iget-object v3, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mPortraitApp180Roate:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 120
    iput-object v4, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mPortraitApp180Roate:Landroid/support/v14/preference/SwitchPreference;

    .line 121
    iget-object v3, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    .end local v0
    .end local v1
    .end local v2
    :cond_5
    :goto_2
    return-void
.end method
