.class public Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "DevelopmentTilePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;
    }
.end annotation


# instance fields
.field private final mOnChangeHandler:Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;

    invoke-direct {v0, p1}, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mOnChangeHandler:Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 49
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 10
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 63
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 64
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.quicksettings.action.QS_TILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 67
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x200

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 69
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 70
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 71
    .local v5, "sInfo":Landroid/content/pm/ServiceInfo;
    iget-object v6, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v6

    .line 73
    .local v6, "enabledSetting":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    if-nez v6, :cond_0

    iget-boolean v8, v5, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    nop

    .line 77
    .local v7, "checked":Z
    :cond_1
    :goto_1
    new-instance v8, Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {v8, v0}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 78
    .local v8, "preference":Landroid/support/v14/preference/SwitchPreference;
    iget-object v9, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v9}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    iget v9, v5, Landroid/content/pm/ServiceInfo;->icon:I

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setIcon(I)V

    .line 80
    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v8, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 82
    iget-object v9, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mOnChangeHandler:Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    invoke-virtual {p1, v8}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 84
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    goto :goto_0

    .line 85
    :cond_2
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 53
    const/4 v0, 0x1

    return v0
.end method
