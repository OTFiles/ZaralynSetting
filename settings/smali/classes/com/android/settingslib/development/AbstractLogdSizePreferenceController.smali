.class public abstract Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "AbstractLogdSizePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static final DEFAULT_SNET_TAG:Ljava/lang/String; = "I"

.field static final LOW_RAM_CONFIG_PROPERTY_KEY:Ljava/lang/String; = "ro.config.low_ram"

.field static final SELECT_LOGD_DEFAULT_SIZE_VALUE:Ljava/lang/String; = "262144"

.field static final SELECT_LOGD_MINIMUM_SIZE_VALUE:Ljava/lang/String; = "65536"

.field static final SELECT_LOGD_SIZE_PROPERTY:Ljava/lang/String; = "persist.logd.size"

.field static final SELECT_LOGD_SNET_TAG_PROPERTY:Ljava/lang/String; = "persist.log.tag.snet_event_log"


# instance fields
.field private mLogdSize:Landroid/support/v7/preference/ListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method private defaultLogdSizeValue()Ljava/lang/String;
    .locals 3

    .line 94
    const-string v0, "ro.logd.size"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 96
    :cond_0
    const-string v1, "ro.config.low_ram"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    const-string v0, "65536"

    goto :goto_0

    .line 99
    :cond_1
    const-string v0, "262144"

    .line 102
    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 71
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "select_logd_size"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    .line 75
    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 66
    const-string v0, "select_logd_size"

    return-object v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 80
    invoke-virtual {p0, p2}, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->writeLogdSizeOption(Ljava/lang/Object;)V

    .line 81
    const/4 v0, 0x1

    return v0

    .line 83
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateLogdSizeValues()V
    .locals 8

    .line 106
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    if-eqz v0, :cond_7

    .line 107
    const-string v0, "persist.log.tag"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "currentTag":Ljava/lang/String;
    const-string v1, "persist.logd.size"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "currentValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "Settings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    const-string v1, "32768"

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.settingslib.development.AbstractLogdSizePreferenceController.LOGD_SIZE_UPDATED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "CURRENT_LOGD_VALUE"

    .line 114
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 112
    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcastSync(Landroid/content/Intent;)V

    .line 115
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 116
    :cond_1
    invoke-direct {p0}, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->defaultLogdSizeValue()Ljava/lang/String;

    move-result-object v1

    .line 118
    :cond_2
    iget-object v2, p0, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settingslib/R$array;->select_logd_size_values:I

    .line 119
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "values":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settingslib/R$array;->select_logd_size_titles:I

    .line 121
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "titles":[Ljava/lang/String;
    const/4 v4, 0x2

    .line 123
    .local v4, "index":I
    const-string v5, "ro.config.low_ram"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 124
    iget-object v5, p0, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    sget v6, Lcom/android/settingslib/R$array;->select_logd_size_lowram_titles:I

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 125
    iget-object v5, p0, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settingslib/R$array;->select_logd_size_lowram_titles:I

    .line 126
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 127
    const/4 v4, 0x1

    .line 129
    :cond_3
    iget-object v5, p0, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settingslib/R$array;->select_logd_size_summaries:I

    .line 130
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, "summaries":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_6

    .line 132
    aget-object v7, v2, v6

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    aget-object v7, v3, v6

    .line 133
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    .line 131
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 134
    :cond_5
    :goto_1
    move v4, v6

    .line 135
    nop

    .line 138
    .end local v6
    :cond_6
    iget-object v6, p0, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    aget-object v7, v2, v4

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 139
    iget-object v6, p0, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    aget-object v7, v5, v4

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 141
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    :cond_7
    return-void
.end method

.method public writeLogdSizeOption(Ljava/lang/Object;)V
    .locals 7
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 144
    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "32768"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 146
    .local v0, "disable":Z
    :goto_0
    const-string v1, "persist.log.tag"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "currentTag":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 148
    const-string v1, ""

    .line 151
    :cond_1
    const-string v2, ",+Settings"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "^Settings,*"

    const-string v4, ""

    .line 152
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ",+"

    const-string v4, ","

    .line 153
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ",+$"

    const-string v4, ""

    .line 154
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "newTag":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 157
    const-string p1, "65536"

    .line 159
    const-string v3, "persist.log.tag.snet_event_log"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "snetValue":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 161
    :cond_2
    const-string v4, "log.tag.snet_event_log"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 162
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 163
    :cond_3
    const-string v4, "persist.log.tag.snet_event_log"

    const-string v5, "I"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 171
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Settings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    .end local v3
    :cond_6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 174
    const-string v3, "persist.log.tag"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_7
    invoke-direct {p0}, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->defaultLogdSizeValue()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_8

    .line 178
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_8
    move-object v4, v3

    .line 179
    .local v4, "size":Ljava/lang/String;
    :goto_1
    const-string v5, "persist.logd.size"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, ""

    goto :goto_2

    :cond_9
    move-object v6, v4

    :goto_2
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v5, "ctl.start"

    const-string v6, "logd-reinit"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    .line 182
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->updateLogdSizeValues()V

    .line 183
    return-void
.end method
