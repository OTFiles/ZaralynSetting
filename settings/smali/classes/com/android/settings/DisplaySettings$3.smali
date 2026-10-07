.class Lcom/android/settings/DisplaySettings$3;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DisplaySettings;

    .line 234
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$3;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 237
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 238
    .local v0, "bValue":Z
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$3;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v1}, Lcom/android/settings/DisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "late_night_mode_status"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 240
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/DisplaySettings$3;->this$0:Lcom/android/settings/DisplaySettings;

    iget-object v2, v2, Lcom/android/settings/DisplaySettings;->mRbciManager:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 242
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "late_night_mode_status"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 243
    .local v2, "latenightmode":I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v2, v1, :cond_0

    if-nez v2, :cond_3

    .line 245
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/DisplaySettings$3;->this$0:Lcom/android/settings/DisplaySettings;

    iget-object v3, v3, Lcom/android/settings/DisplaySettings;->mRbciManager:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 247
    iget-object v3, p0, Lcom/android/settings/DisplaySettings$3;->this$0:Lcom/android/settings/DisplaySettings;

    iget-object v5, v3, Lcom/android/settings/DisplaySettings;->mRbciManager:Ljava/lang/Object;

    const-string v6, "RbciSetBooleanByName"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-class v8, Ljava/lang/String;

    const-string v9, "late_night_mode"

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v1, :cond_1

    move v4, v1

    nop

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static/range {v5 .. v11}, Lcom/android/settings/SettingsExtraMoreSettings;->setCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    goto :goto_0

    .line 250
    :catch_0
    move-exception v3

    .line 251
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    .end local v2
    .end local v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_0
    goto :goto_1

    .line 255
    :catch_1
    move-exception v2

    .line 257
    :goto_1
    return v1
.end method
