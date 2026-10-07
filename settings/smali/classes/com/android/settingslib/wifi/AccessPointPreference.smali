.class public Lcom/android/settingslib/wifi/AccessPointPreference;
.super Landroid/support/v7/preference/Preference;
.source "AccessPointPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;,
        Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;
    }
.end annotation


# static fields
.field private static final FRICTION_ATTRS:[I

.field private static final STATE_METERED:[I

.field private static final STATE_SECURED:[I

.field private static final STATE_SECURED_OWE:[I

.field private static final STATE_SECURED_SAE:[I

.field private static final WIFI_CONNECTION_STRENGTH:[I


# instance fields
.field private mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private final mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private final mBadgePadding:I

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mDefaultIconResId:I

.field private mForSavedNetworks:Z

.field private final mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

.field private final mIconInjector:Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;

.field private mLevel:I

.field private final mNotifyChanged:Ljava/lang/Runnable;

.field private mShowDivider:Z

.field private mTitleView:Landroid/widget/TextView;

.field private mWifiSpeed:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    const/4 v0, 0x1

    new-array v1, v0, [I

    sget v2, Lcom/android/settingslib/R$attr;->state_encrypted_owe:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_SECURED_OWE:[I

    .line 51
    new-array v1, v0, [I

    sget v2, Lcom/android/settingslib/R$attr;->state_encrypted_sae:I

    aput v2, v1, v3

    sput-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_SECURED_SAE:[I

    .line 55
    new-array v1, v0, [I

    sget v2, Lcom/android/settingslib/R$attr;->state_encrypted:I

    aput v2, v1, v3

    sput-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_SECURED:[I

    .line 59
    new-array v1, v0, [I

    sget v2, Lcom/android/settingslib/R$attr;->state_metered:I

    aput v2, v1, v3

    sput-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_METERED:[I

    .line 63
    new-array v1, v0, [I

    sget v2, Lcom/android/settingslib/R$attr;->wifi_friction:I

    aput v2, v1, v3

    sput-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->FRICTION_ATTRS:[I

    .line 67
    const/4 v1, 0x5

    new-array v1, v1, [I

    sget v2, Lcom/android/settingslib/R$string;->accessibility_no_wifi:I

    aput v2, v1, v3

    sget v2, Lcom/android/settingslib/R$string;->accessibility_wifi_one_bar:I

    aput v2, v1, v0

    sget v0, Lcom/android/settingslib/R$string;->accessibility_wifi_two_bars:I

    const/4 v2, 0x2

    aput v0, v1, v2

    sget v0, Lcom/android/settingslib/R$string;->accessibility_wifi_three_bars:I

    const/4 v2, 0x3

    aput v0, v1, v2

    sget v0, Lcom/android/settingslib/R$string;->accessibility_wifi_signal_full:I

    const/4 v2, 0x4

    aput v0, v1, v2

    sput-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 88
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiSpeed:I

    .line 331
    new-instance v1, Lcom/android/settingslib/wifi/AccessPointPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settingslib/wifi/AccessPointPreference$1;-><init>(Lcom/android/settingslib/wifi/AccessPointPreference;)V

    iput-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    .line 106
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    .line 107
    iput-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    .line 108
    new-instance v0, Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;

    invoke-direct {v0, p1}, Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mIconInjector:Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZ)V
    .locals 9
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cache"    # Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;
    .param p4, "iconResId"    # I
    .param p5, "forSavedNetworks"    # Z

    .line 119
    nop

    .line 120
    invoke-static {p2}, Lcom/android/settingslib/wifi/AccessPointPreference;->getFrictionStateListDrawable(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    new-instance v8, Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;

    invoke-direct {v8, p2}, Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;-><init>(Landroid/content/Context;)V

    .line 119
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZLandroid/graphics/drawable/StateListDrawable;ILcom/android/settingslib/wifi/AccessPointPreference$IconInjector;)V

    .line 121
    return-void
.end method

.method constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZLandroid/graphics/drawable/StateListDrawable;ILcom/android/settingslib/wifi/AccessPointPreference$IconInjector;)V
    .locals 2
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cache"    # Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;
    .param p4, "iconResId"    # I
    .param p5, "forSavedNetworks"    # Z
    .param p6, "frictionSld"    # Landroid/graphics/drawable/StateListDrawable;
    .param p7, "level"    # I
    .param p8, "iconInjector"    # Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;

    .line 127
    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 88
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiSpeed:I

    .line 331
    new-instance v0, Lcom/android/settingslib/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/AccessPointPreference$1;-><init>(Lcom/android/settingslib/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    .line 128
    sget v0, Lcom/android/settingslib/R$layout;->preference_accesspoint_material:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->setLayoutResource(I)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getWidgetLayoutResourceId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->setWidgetLayoutResource(I)V

    .line 131
    iput-object p3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    .line 132
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 133
    iput-boolean p5, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 134
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint;->setTag(Ljava/lang/Object;)V

    .line 135
    iput p7, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    .line 136
    iput p4, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mDefaultIconResId:I

    .line 137
    iput-object p6, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    .line 138
    iput-object p8, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mIconInjector:Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;

    .line 139
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$dimen;->wifi_preference_badge_padding:I

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    .line 141
    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;Z)V
    .locals 6
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cache"    # Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;
    .param p4, "forSavedNetworks"    # Z

    .line 113
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZ)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->refresh()V

    .line 115
    return-void
.end method

.method private bindFrictionImage(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "frictionImageView"    # Landroid/widget/ImageView;

    .line 214
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    if-nez v0, :cond_0

    goto :goto_1

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_SECURED_SAE:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 220
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_SECURED_OWE:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_SECURED:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_0

    .line 223
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isMetered()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 224
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_METERED:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 226
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 227
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    return-void

    .line 215
    .end local v0
    :cond_5
    :goto_1
    return-void
.end method

.method static buildContentDescription(Landroid/content/Context;Landroid/support/v7/preference/Preference;Lcom/android/settingslib/wifi/AccessPoint;)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;
    .param p2, "ap"    # Lcom/android/settingslib/wifi/AccessPoint;

    .line 305
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 306
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 307
    .local v1, "summary":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-nez v2, :cond_0

    .line 308
    new-array v2, v6, [Ljava/lang/CharSequence;

    aput-object v0, v2, v5

    const-string v7, ","

    aput-object v7, v2, v4

    aput-object v1, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 310
    :cond_0
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v2

    .line 311
    .local v2, "level":I
    if-ltz v2, :cond_1

    sget-object v7, Lcom/android/settingslib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    array-length v7, v7

    if-ge v2, v7, :cond_1

    .line 312
    new-array v7, v6, [Ljava/lang/CharSequence;

    aput-object v0, v7, v5

    const-string v8, ","

    aput-object v8, v7, v4

    sget-object v8, Lcom/android/settingslib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    aget v8, v8, v2

    .line 313
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 312
    invoke-static {v7}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 315
    :cond_1
    new-array v6, v6, [Ljava/lang/CharSequence;

    aput-object v0, v6, v5

    const-string v5, ","

    aput-object v5, v6, v4

    .line 316
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v4

    if-nez v4, :cond_2

    .line 317
    sget v4, Lcom/android/settingslib/R$string;->accessibility_wifi_security_type_none:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 318
    :cond_2
    sget v4, Lcom/android/settingslib/R$string;->accessibility_wifi_security_type_secured:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    aput-object v4, v6, v3

    .line 315
    invoke-static {v6}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3
.end method

.method private static getFrictionStateListDrawable(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 94
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/android/settingslib/wifi/AccessPointPreference;->FRICTION_ATTRS:[I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 98
    .local v1, "frictionSld":Landroid/content/res/TypedArray;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v1
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    nop

    .end local v1
    move-object v1, v0

    .line 99
    .local v1, "frictionSld":Landroid/content/res/TypedArray;
    :goto_0
    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    nop

    :cond_0
    return-object v0
.end method

.method private postNotifyChanged()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 329
    :cond_0
    return-void
.end method

.method private safeSetDefaultIcon()V
    .locals 1

    .line 240
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getIconResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->setIcon(I)V

    .line 246
    return-void
.end method

.method static setTitle(Lcom/android/settingslib/wifi/AccessPointPreference;Lcom/android/settingslib/wifi/AccessPoint;Z)V
    .locals 1
    .param p0, "preference"    # Lcom/android/settingslib/wifi/AccessPointPreference;
    .param p1, "ap"    # Lcom/android/settingslib/wifi/AccessPoint;
    .param p2, "savedNetworks"    # Z

    .line 293
    if-eqz p2, :cond_0

    .line 294
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 298
    :goto_0
    return-void
.end method


# virtual methods
.method public getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    sget v0, Lcom/android/settingslib/R$drawable;->wifi_signal_lock_teal:I

    return v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isMetered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    sget v0, Lcom/android/settingslib/R$drawable;->wifi_signal_lock_teal:I

    return v0

    .line 236
    :cond_1
    sget v0, Lcom/android/settingslib/R$drawable;->wifi_signal_open_teal:I

    return v0
.end method

.method protected getWidgetLayoutResourceId()I
    .locals 1

    .line 144
    sget v0, Lcom/android/settingslib/R$layout;->access_point_friction_widget:I

    return v0
.end method

.method protected notifyChanged()V
    .locals 2

    .line 283
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->postNotifyChanged()V

    goto :goto_0

    .line 287
    :cond_0
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->notifyChanged()V

    .line 289
    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 154
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 155
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_0

    .line 157
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 160
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 161
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 164
    :cond_1
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    .line 165
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadge:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 168
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 170
    :cond_2
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 172
    sget v1, Lcom/android/settingslib/R$id;->friction_icon:I

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 173
    .local v1, "frictionImageView":Landroid/widget/ImageView;
    invoke-direct {p0, v1}, Lcom/android/settingslib/wifi/AccessPointPreference;->bindFrictionImage(Landroid/widget/ImageView;)V

    .line 175
    sget v2, Lcom/android/settingslib/R$id;->two_target_divider:I

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 176
    .local v2, "divider":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->shouldShowDivider()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 178
    .end local v0
    .end local v1
    .end local v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 177
    :catch_0
    move-exception v0

    .line 179
    :goto_1
    return-void
.end method

.method public onLevelChanged()V
    .locals 0

    .line 322
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->postNotifyChanged()V

    .line 323
    return-void
.end method

.method public refresh()V
    .locals 5

    .line 262
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/wifi/AccessPointPreference;->setTitle(Lcom/android/settingslib/wifi/AccessPointPreference;Lcom/android/settingslib/wifi/AccessPoint;Z)V

    .line 263
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 264
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v1

    .line 265
    .local v1, "level":I
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v2

    .line 266
    .local v2, "wifiSpeed":I
    iget v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    if-ne v1, v3, :cond_0

    iget v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiSpeed:I

    if-eq v2, v3, :cond_1

    .line 267
    :cond_0
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    .line 268
    iput v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiSpeed:I

    .line 269
    iget v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {p0, v3, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->updateIcon(ILandroid/content/Context;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->notifyChanged()V

    .line 273
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->updateBadge(Landroid/content/Context;)V

    .line 275
    iget-boolean v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSavedNetworkSummary()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 276
    :cond_2
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSettingsSummary()Ljava/lang/String;

    move-result-object v3

    .line 275
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settingslib/wifi/AccessPointPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v3, p0, v4}, Lcom/android/settingslib/wifi/AccessPointPreference;->buildContentDescription(Landroid/content/Context;Landroid/support/v7/preference/Preference;Lcom/android/settingslib/wifi/AccessPoint;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 279
    return-void
.end method

.method public setShowDivider(Z)V
    .locals 0
    .param p1, "showDivider"    # Z

    .line 186
    iput-boolean p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mShowDivider:Z

    .line 187
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->notifyChanged()V

    .line 188
    return-void
.end method

.method public shouldShowDivider()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mShowDivider:Z

    return v0
.end method

.method protected updateBadge(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 249
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 250
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v1, v2}, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;->access$000(Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 256
    :cond_0
    return-void
.end method

.method protected updateIcon(ILandroid/content/Context;)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 191
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->safeSetDefaultIcon()V

    .line 193
    return-void

    .line 195
    :cond_0
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiSpeed:I

    invoke-static {p2, v0}, Lcom/android/settingslib/TronUtils;->logWifiSettingsSpeed(Landroid/content/Context;I)V

    .line 204
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getIconResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->setIcon(I)V

    .line 205
    return-void
.end method
