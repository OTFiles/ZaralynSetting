.class public Lcom/android/settings/TouchModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TouchModeSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mTouchModePen:Landroid/support/v14/preference/SwitchPreference;

.field private myHadler:Landroid/os/Handler;

.field private myRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TouchModeSettings;->mTouchModePen:Landroid/support/v14/preference/SwitchPreference;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/TouchModeSettings;->myHadler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/android/settings/TouchModeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TouchModeSettings$1;-><init>(Lcom/android/settings/TouchModeSettings;)V

    iput-object v0, p0, Lcom/android/settings/TouchModeSettings;->myRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TouchModeSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TouchModeSettings;

    .line 29
    iget-object v0, p0, Lcom/android/settings/TouchModeSettings;->mTouchModePen:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method public static getTouchModeDriver()Ljava/lang/String;
    .locals 7

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/readboy/tp_pen_en"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 95
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/readboy/synaptics_pen"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 99
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/hideep/stylus_en"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 104
    :cond_2
    const/4 v1, 0x0

    move-object v2, v1

    .line 106
    .local v2, "mRbciManager":Ljava/lang/Object;
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    const-string v4, "rbci"

    invoke-virtual {v3, v4}, Lcom/android/settings/SettingsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 110
    :goto_0
    goto :goto_1

    .line 109
    :catch_0
    move-exception v3

    goto :goto_1

    .line 108
    :catch_1
    move-exception v3

    goto :goto_0

    .line 107
    :catch_2
    move-exception v3

    goto :goto_0

    .line 111
    :goto_1
    if-eqz v2, :cond_3

    .line 112
    move-object v3, v1

    .line 114
    .local v3, "result_val":Ljava/lang/String;
    :try_start_1
    const-string v4, "RbciGetInfoByName"

    const-class v5, Ljava/lang/String;

    const-string v6, "gt738x_cfg_mode"

    invoke-static {v2, v4, v1, v5, v6}, Lcom/android/settings/SettingsExtraMoreSettings;->getCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v3, v4

    .line 116
    goto :goto_2

    .line 115
    :catch_3
    move-exception v4

    .line 117
    :goto_2
    if-eqz v3, :cond_3

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_rbci"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 122
    .end local v3
    :cond_3
    return-object v1
.end method

.method public static readProcFile()I
    .locals 8

    .line 132
    invoke-static {}, Lcom/android/settings/TouchModeSettings;->getTouchModeDriver()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "str1":Ljava/lang/String;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 134
    return v1

    .line 136
    :cond_0
    const-string v2, "_rbci"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 137
    move-object v2, v3

    .line 139
    .local v2, "mRbciManager":Ljava/lang/Object;
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    const-string v4, "rbci"

    invoke-virtual {v3, v4}, Lcom/android/settings/SettingsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 143
    :goto_0
    goto :goto_1

    .line 142
    :catch_0
    move-exception v3

    goto :goto_1

    .line 141
    :catch_1
    move-exception v3

    goto :goto_0

    .line 140
    :catch_2
    move-exception v3

    goto :goto_0

    .line 144
    :goto_1
    if-eqz v2, :cond_3

    .line 146
    :try_start_1
    const-string v3, "RbciGetIntByName"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    const-string v6, "gt738x_cfg_mode"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/settings/SettingsExtraMoreSettings;->getCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 147
    .local v3, "tp_pen_result":I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 148
    const/4 v1, 0x2

    return v1

    .line 149
    :cond_1
    if-nez v3, :cond_2

    .line 150
    return v4

    .line 153
    .end local v3
    :cond_2
    goto :goto_2

    .line 152
    :catch_3
    move-exception v3

    .line 155
    :cond_3
    :goto_2
    return v1

    .line 159
    .end local v2
    :cond_4
    const/4 v1, -0x1

    .line 161
    .local v1, "ret":I
    const/4 v2, 0x0

    .line 162
    .local v2, "localFileReader":Ljava/io/FileReader;
    nop

    .line 164
    .local v3, "localBufferedReader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 165
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x12c

    invoke-direct {v4, v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v3, v4

    .line 166
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "str2":Ljava/lang/String;
    if-eqz v4, :cond_9

    .line 168
    const-string v5, "lich"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "divhee----------------read = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v5, "synaptics_pen"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 175
    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 176
    const/4 v1, 0x2

    goto :goto_3

    .line 177
    :cond_5
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 178
    const/4 v1, 0x1

    goto :goto_3

    .line 180
    :cond_6
    const-string v5, "stylus_en"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "tp_pen_en"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 181
    :cond_7
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 182
    const/4 v1, 0x2

    goto :goto_3

    .line 183
    :cond_8
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_9

    .line 184
    const/4 v1, 0x1

    .line 193
    :cond_9
    :goto_3
    nop

    .line 194
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 195
    const/4 v3, 0x0

    goto :goto_4

    .line 201
    :catch_4
    move-exception v5

    goto :goto_6

    .line 197
    :goto_4
    nop

    .line 198
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 199
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :goto_5
    const/4 v2, 0x0

    goto :goto_8

    .line 201
    :goto_6
    nop

    .line 202
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 204
    .end local v4
    .end local v5
    :goto_7
    goto :goto_b

    .line 203
    .restart local v4
    :cond_a
    :goto_8
    goto :goto_b

    .line 192
    .end local v4
    :catchall_0
    move-exception v4

    goto :goto_c

    .line 188
    :catch_5
    move-exception v4

    .line 189
    .local v4, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 190
    const-string v5, "lich"

    const-string v6, "divhee----------------read222 = "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_b

    .line 194
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 195
    const/4 v3, 0x0

    goto :goto_9

    .line 201
    :catch_6
    move-exception v4

    goto :goto_a

    .line 197
    :cond_b
    :goto_9
    if-eqz v2, :cond_a

    .line 198
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_5

    .line 201
    :goto_a
    nop

    .line 202
    .restart local v4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4
    goto :goto_7

    .line 205
    :goto_b
    return v1

    .line 192
    :goto_c
    nop

    .line 193
    if-eqz v3, :cond_c

    .line 194
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 195
    const/4 v3, 0x0

    goto :goto_d

    .line 201
    :catch_7
    move-exception v5

    goto :goto_e

    .line 197
    :cond_c
    :goto_d
    if-eqz v2, :cond_d

    .line 198
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 199
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    const/4 v2, 0x0

    goto :goto_f

    .line 201
    :goto_e
    nop

    .line 202
    .restart local v5
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5
    nop

    .line 203
    :cond_d
    :goto_f
    throw v4
.end method

.method public static readProviders(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 306
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "touch_pen_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static readProviders_rbci(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 320
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 322
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "touch_pen_mode_rbci"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static writeProcFile(Ljava/lang/String;)I
    .locals 11
    .param p0, "strContent"    # Ljava/lang/String;

    .line 217
    invoke-static {}, Lcom/android/settings/TouchModeSettings;->getTouchModeDriver()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "str1":Ljava/lang/String;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 219
    return v1

    .line 222
    :cond_0
    const-string v2, "_rbci"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 223
    if-eqz p0, :cond_1

    .line 224
    move-object v2, v3

    .line 226
    .local v2, "mRbciManager":Ljava/lang/Object;
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    const-string v4, "rbci"

    invoke-virtual {v3, v4}, Lcom/android/settings/SettingsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 230
    :goto_0
    goto :goto_1

    .line 229
    :catch_0
    move-exception v3

    goto :goto_1

    .line 228
    :catch_1
    move-exception v3

    goto :goto_0

    .line 227
    :catch_2
    move-exception v3

    goto :goto_0

    .line 231
    :goto_1
    if-eqz v2, :cond_1

    .line 233
    :try_start_1
    const-string v5, "RbciSetIntByName"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-class v7, Ljava/lang/String;

    const-string v8, "gt738x_cfg_mode"

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "2"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v4, v2

    invoke-static/range {v4 .. v10}, Lcom/android/settings/SettingsExtraMoreSettings;->setCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    return v3

    .line 234
    :catch_3
    move-exception v3

    .line 238
    .end local v2
    :cond_1
    return v1

    .line 241
    :cond_2
    const/4 v1, -0x1

    .line 243
    .local v1, "ret":I
    const/4 v2, 0x0

    .line 244
    .local v2, "localFileWriter":Ljava/io/FileWriter;
    nop

    .line 249
    .local v3, "localBufferedWriter":Ljava/io/BufferedWriter;
    :try_start_2
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 250
    new-instance v4, Ljava/io/BufferedWriter;

    invoke-direct {v4, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v3, v4

    .line 252
    const-string v4, "synaptics_pen"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 254
    :cond_3
    const-string v4, "stylus_en"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "tp_pen_en"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 255
    :cond_4
    const-string v4, "2"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 256
    const-string v4, "1"

    move-object p0, v4

    goto :goto_2

    .line 257
    :cond_5
    const-string v4, "1"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 258
    const-string v4, "0"

    move-object p0, v4

    .line 262
    :cond_6
    :goto_2
    invoke-virtual {v3, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 269
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    .line 270
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 271
    const/4 v3, 0x0

    .line 273
    nop

    .line 274
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_4

    .line 268
    :catchall_0
    move-exception v4

    goto :goto_8

    .line 264
    :catch_4
    move-exception v4

    .line 265
    .local v4, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 269
    .end local v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_7

    .line 270
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 271
    const/4 v3, 0x0

    goto :goto_3

    .line 278
    :catch_5
    move-exception v4

    goto :goto_5

    .line 273
    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    .line 274
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 275
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_4
    const/4 v2, 0x0

    goto :goto_6

    .line 278
    :goto_5
    nop

    .line 281
    goto :goto_7

    .line 277
    :cond_8
    :goto_6
    const/4 v1, 0x1

    .line 280
    nop

    .line 282
    :goto_7
    return v1

    .line 268
    :goto_8
    nop

    .line 269
    if-eqz v3, :cond_9

    .line 270
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 271
    const/4 v3, 0x0

    goto :goto_9

    .line 278
    :catch_6
    move-exception v5

    goto :goto_a

    .line 273
    :cond_9
    :goto_9
    if-eqz v2, :cond_a

    .line 274
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 275
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    const/4 v2, 0x0

    goto :goto_b

    .line 278
    :goto_a
    goto :goto_c

    .line 277
    :cond_a
    :goto_b
    const/4 v1, 0x1

    .line 280
    :goto_c
    throw v4
.end method

.method public static writeProviders(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "s"    # Ljava/lang/String;

    .line 294
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 297
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v1, "touch_pen_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 300
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "TouchModeSettings"

    const-string v3, "could not save touch pen mode setting!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .end local v1
    :goto_0
    return-void
.end method

.method public static writeProviders_rbci(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 313
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v1, "touch_pen_mode_rbci"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 316
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "TouchModeSettings"

    const-string v3, "2222 could not save touch pen mode setting!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .end local v1
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 400
    const/16 v0, 0x2f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f1500b0

    invoke-virtual {p0, v0}, Lcom/android/settings/TouchModeSettings;->addPreferencesFromResource(I)V

    .line 47
    const-string v0, "touchmode_pen"

    invoke-virtual {p0, v0}, Lcom/android/settings/TouchModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/TouchModeSettings;->mTouchModePen:Landroid/support/v14/preference/SwitchPreference;

    .line 48
    iget-object v0, p0, Lcom/android/settings/TouchModeSettings;->mTouchModePen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 50
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .line 326
    iget-object v0, p0, Lcom/android/settings/TouchModeSettings;->mTouchModePen:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_3

    .line 327
    invoke-static {}, Lcom/android/settings/TouchModeSettings;->getTouchModeDriver()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "str1":Ljava/lang/String;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v2, "_rbci"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    const-string v2, "2"

    invoke-static {v2}, Lcom/android/settings/TouchModeSettings;->writeProcFile(Ljava/lang/String;)I

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/TouchModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/settings/TouchModeSettings;->writeProviders_rbci(Landroid/content/Context;I)V

    goto :goto_0

    .line 334
    :cond_0
    const-string v2, "1"

    invoke-static {v2}, Lcom/android/settings/TouchModeSettings;->writeProcFile(Ljava/lang/String;)I

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/TouchModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings/TouchModeSettings;->writeProviders_rbci(Landroid/content/Context;I)V

    goto :goto_0

    .line 340
    :cond_1
    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 341
    const-string v2, "2"

    invoke-static {v2}, Lcom/android/settings/TouchModeSettings;->writeProcFile(Ljava/lang/String;)I

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/TouchModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "2"

    invoke-static {v2, v3}, Lcom/android/settings/TouchModeSettings;->writeProviders(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_2
    const-string v2, "1"

    invoke-static {v2}, Lcom/android/settings/TouchModeSettings;->writeProcFile(Ljava/lang/String;)I

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/TouchModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/android/settings/TouchModeSettings;->writeProviders(Landroid/content/Context;Ljava/lang/String;)V

    .line 350
    :goto_0
    return v1

    .line 352
    .end local v0
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 4

    .line 54
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 55
    iget-object v0, p0, Lcom/android/settings/TouchModeSettings;->myHadler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/TouchModeSettings;->myRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    return-void
.end method

.method public touchModePenSetChecked(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 78
    iget-object v0, p0, Lcom/android/settings/TouchModeSettings;->mTouchModePen:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/settings/TouchModeSettings;->mTouchModePen:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/TouchModeSettings;->mTouchModePen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/TouchModeSettings;->mTouchModePen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    :cond_0
    return-void
.end method
