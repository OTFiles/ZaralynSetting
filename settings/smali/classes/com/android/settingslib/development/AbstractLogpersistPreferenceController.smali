.class public abstract Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "AbstractLogpersistPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/ConfirmationDialogController;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# static fields
.field static final ACTUAL_LOGPERSIST_PROPERTY:Ljava/lang/String; = "logd.logpersistd"

.field static final ACTUAL_LOGPERSIST_PROPERTY_BUFFER:Ljava/lang/String; = "logd.logpersistd.buffer"

.field static final SELECT_LOGPERSIST_PROPERTY_SERVICE:Ljava/lang/String; = "logcatd"


# instance fields
.field private mLogpersist:Landroid/support/v7/preference/ListPreference;

.field private mLogpersistCleared:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 70
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController$1;-><init>(Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;)V

    iput-object v0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 74
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->onLogdSizeSettingUpdate(Ljava/lang/String;)V

    return-void
.end method

.method private onLogdSizeSettingUpdate(Ljava/lang/String;)V
    .locals 3
    .param p1, "currentValue"    # Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-eqz v0, :cond_2

    .line 123
    const-string v0, "logd.logpersistd.enable"

    .line 124
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "currentLogpersistEnable":Ljava/lang/String;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v2, "true"

    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "32768"

    .line 127
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    iget-object v2, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .end local v0
    goto :goto_1

    .line 129
    .restart local v0
    :cond_1
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->writeLogpersistOption(Ljava/lang/Object;Z)V

    .line 130
    iget-object v1, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 135
    .end local v0
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 88
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "select_logpersist"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    .line 92
    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 83
    const-string v0, "select_logpersist"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 78
    iget-boolean v0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mIsAvailable:Z

    if-eqz v0, :cond_0

    const-string v0, "ro.debuggable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 106
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settingslib.development.AbstractLogdSizePreferenceController.LOGD_SIZE_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 108
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 97
    invoke-virtual {p0, p2, v1}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->writeLogpersistOption(Ljava/lang/Object;Z)V

    .line 98
    const/4 v0, 0x1

    return v0

    .line 100
    :cond_0
    return v1
.end method

.method protected setLogpersistOff(Z)V
    .locals 4
    .param p1, "update"    # Z

    .line 185
    const-string v0, "persist.logd.logpersistd.buffer"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v0, "logd.logpersistd.buffer"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v0, "persist.logd.logpersistd"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v0, "logd.logpersistd"

    .line 190
    if-eqz p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "stop"

    .line 189
    :goto_0
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    .line 192
    if-eqz p1, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->updateLogpersistValues()V

    goto :goto_3

    .line 195
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    .line 196
    const-string v1, "logd.logpersistd"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "currentValue":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    goto :goto_3

    .line 201
    :cond_2
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 204
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 202
    :catch_0
    move-exception v2

    .line 195
    .end local v1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 207
    .end local v0
    :cond_3
    :goto_3
    return-void
.end method

.method public updateLogpersistValues()V
    .locals 9

    .line 138
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-nez v0, :cond_0

    .line 139
    return-void

    .line 141
    :cond_0
    const-string v0, "logd.logpersistd"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "currentValue":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 143
    const-string v0, ""

    .line 145
    :cond_1
    const-string v1, "logd.logpersistd.buffer"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "currentBuffers":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 147
    :cond_2
    const-string v1, "all"

    .line 149
    :cond_3
    const/4 v2, 0x0

    .line 150
    .local v2, "index":I
    const-string v3, "logcatd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 151
    const/4 v2, 0x1

    .line 152
    const-string v3, "kernel"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 153
    const/4 v2, 0x3

    goto :goto_1

    .line 154
    :cond_4
    const-string v3, "all"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "radio"

    .line 155
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "security"

    .line 156
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "kernel"

    .line 157
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 158
    const/4 v2, 0x2

    .line 159
    const-string v3, "default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 160
    const-string v3, "main"

    const-string v5, "events"

    const-string v6, "system"

    const-string v7, "crash"

    filled-new-array {v3, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "contains":[Ljava/lang/String;
    array-length v5, v3

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_6

    aget-object v7, v3, v6

    .line 162
    .local v7, "type":Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 163
    const/4 v2, 0x1

    .line 164
    goto :goto_1

    .line 161
    .end local v7
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 170
    .end local v3
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mContext:Landroid/content/Context;

    .line 171
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settingslib/R$array;->select_logpersist_values:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    .line 170
    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 172
    iget-object v3, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mContext:Landroid/content/Context;

    .line 173
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settingslib/R$array;->select_logpersist_summaries:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    .line 172
    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 174
    if-eqz v2, :cond_7

    .line 175
    iput-boolean v4, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersistCleared:Z

    goto :goto_2

    .line 176
    :cond_7
    iget-boolean v3, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersistCleared:Z

    if-nez v3, :cond_8

    .line 178
    const-string v3, "logd.logpersistd"

    const-string v4, "clear"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    .line 180
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersistCleared:Z

    .line 182
    :cond_8
    :goto_2
    return-void
.end method

.method public writeLogpersistOption(Ljava/lang/Object;Z)V
    .locals 6
    .param p1, "newValue"    # Ljava/lang/Object;
    .param p2, "skipWarning"    # Z

    .line 210
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-nez v0, :cond_0

    .line 211
    return-void

    .line 213
    :cond_0
    const-string v0, "persist.log.tag"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "currentTag":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "Settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    const/4 p1, 0x0

    .line 218
    const/4 p2, 0x1

    .line 221
    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    .line 237
    :cond_2
    const-string v2, "logd.logpersistd.buffer"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "currentBuffer":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 239
    invoke-virtual {p0, v1}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->setLogpersistOff(Z)V

    .line 241
    :cond_3
    const-string v3, "persist.logd.logpersistd.buffer"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v3, "persist.logd.logpersistd"

    const-string v4, "logcatd"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    .line 244
    nop

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_5

    .line 245
    const-string v3, "logd.logpersistd"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, "currentValue":Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string v4, "logcatd"

    .line 247
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 248
    goto :goto_2

    .line 251
    :cond_4
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 254
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 252
    :catch_0
    move-exception v4

    .line 244
    .end local v3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v1
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->updateLogpersistValues()V

    .line 257
    return-void

    .line 222
    .end local v2
    :cond_6
    :goto_3
    if-eqz p2, :cond_7

    .line 223
    iput-boolean v1, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersistCleared:Z

    goto :goto_4

    .line 224
    :cond_7
    iget-boolean v1, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersistCleared:Z

    if-nez v1, :cond_8

    .line 226
    const-string v1, "logd.logpersistd"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "currentValue":Ljava/lang/String;
    if-eqz v1, :cond_8

    const-string v2, "logcatd"

    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 229
    iget-object v2, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0, v2}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->showConfirmationDialog(Landroid/support/v7/preference/Preference;)V

    .line 230
    return-void

    .line 233
    .end local v1
    :cond_8
    :goto_4
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->setLogpersistOff(Z)V

    .line 234
    return-void
.end method
