.class public Lcom/android/settings/wifi/LongPressAccessPointPreference;
.super Lcom/android/settingslib/wifi/AccessPointPreference;
.source "LongPressAccessPointPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/LongPressAccessPointPreference$WifiIconCallback;
    }
.end annotation


# instance fields
.field private final mFragment:Landroid/app/Fragment;

.field private wifiIconCallback:Lcom/android/settings/wifi/LongPressAccessPointPreference$WifiIconCallback;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZILandroid/app/Fragment;)V
    .locals 6
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cache"    # Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;
    .param p4, "forSavedNetworks"    # Z
    .param p5, "iconResId"    # I
    .param p6, "fragment"    # Landroid/app/Fragment;

    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZ)V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/LongPressAccessPointPreference;->wifiIconCallback:Lcom/android/settings/wifi/LongPressAccessPointPreference$WifiIconCallback;

    .line 43
    iput-object p6, p0, Lcom/android/settings/wifi/LongPressAccessPointPreference;->mFragment:Landroid/app/Fragment;

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZLandroid/app/Fragment;)V
    .locals 1
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cache"    # Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;
    .param p4, "forSavedNetworks"    # Z
    .param p5, "fragment"    # Landroid/app/Fragment;

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;Z)V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/LongPressAccessPointPreference;->wifiIconCallback:Lcom/android/settings/wifi/LongPressAccessPointPreference$WifiIconCallback;

    .line 37
    iput-object p5, p0, Lcom/android/settings/wifi/LongPressAccessPointPreference;->mFragment:Landroid/app/Fragment;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/LongPressAccessPointPreference;)Lcom/android/settings/wifi/LongPressAccessPointPreference$WifiIconCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 30
    iget-object v0, p0, Lcom/android/settings/wifi/LongPressAccessPointPreference;->wifiIconCallback:Lcom/android/settings/wifi/LongPressAccessPointPreference$WifiIconCallback;

    return-object v0
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 49
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/settingslib/wifi/AccessPointPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 51
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 53
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/wifi/LongPressAccessPointPreference;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/wifi/LongPressAccessPointPreference;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 55
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 56
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 57
    const v0, 0x7f0a01db

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "icon_frame":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 59
    new-instance v1, Lcom/android/settings/wifi/LongPressAccessPointPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/LongPressAccessPointPreference$1;-><init>(Lcom/android/settings/wifi/LongPressAccessPointPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    .end local v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    goto :goto_1

    .line 69
    :catch_1
    move-exception v0

    .line 71
    :goto_1
    return-void
.end method

.method public setWifiIconCallback(Lcom/android/settings/wifi/LongPressAccessPointPreference$WifiIconCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings/wifi/LongPressAccessPointPreference$WifiIconCallback;

    .line 75
    iput-object p1, p0, Lcom/android/settings/wifi/LongPressAccessPointPreference;->wifiIconCallback:Lcom/android/settings/wifi/LongPressAccessPointPreference$WifiIconCallback;

    .line 76
    return-void
.end method
