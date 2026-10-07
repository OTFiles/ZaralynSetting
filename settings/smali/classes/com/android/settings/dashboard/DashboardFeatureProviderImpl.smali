.class public Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;
.super Ljava/lang/Object;
.source "DashboardFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/dashboard/DashboardFeatureProvider;


# static fields
.field static final META_DATA_KEY_ORDER:Ljava/lang/String; = "com.android.settings.order"


# instance fields
.field private final mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

.field protected final mContext:Landroid/content/Context;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->getExtraIntentAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settingslib/drawer/CategoryManager;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/CategoryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

    .line 77
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 79
    return-void
.end method

.method private bindSummary(Landroid/support/v7/preference/Preference;Lcom/android/settingslib/drawer/Tile;)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .line 220
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const v1, 0x7f120e34

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.summary_uri"

    .line 223
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 228
    new-instance v0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$eT0JYpovsB0-eUpWXkBH1qYJv_I;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$eT0JYpovsB0-eUpWXkBH1qYJv_I;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settingslib/drawer/Tile;Landroid/support/v7/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 238
    :goto_0
    return-void
.end method

.method private isIntentResolvable(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 291
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method static synthetic lambda$bindIcon$3(Landroid/support/v7/preference/Preference;Landroid/graphics/drawable/Icon;)V
    .locals 1
    .param p0, "preference"    # Landroid/support/v7/preference/Preference;
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 266
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic lambda$bindIcon$4(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settingslib/drawer/Tile;Landroid/support/v7/preference/Preference;)V
    .locals 7
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;
    .param p2, "preference"    # Landroid/support/v7/preference/Preference;

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    .line 250
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 253
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 256
    .end local v1
    :cond_1
    :goto_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 257
    .local v1, "providerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/IContentProvider;>;"
    iget-object v2, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.icon_uri"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "uri":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v2, v1}, Lcom/android/settingslib/drawer/TileUtils;->getIconFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v3

    .line 260
    .local v3, "iconInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v3, :cond_2

    .line 261
    const-string v4, "DashboardFeatureImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get icon from uri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void

    .line 264
    :cond_2
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 265
    .local v4, "icon":Landroid/graphics/drawable/Icon;
    new-instance v5, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$GREAS10FflfW9_XoMVZ4GOVTVF8;

    invoke-direct {v5, p2, v4}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$GREAS10FflfW9_XoMVZ4GOVTVF8;-><init>(Landroid/support/v7/preference/Preference;Landroid/graphics/drawable/Icon;)V

    invoke-static {v5}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 268
    return-void
.end method

.method public static synthetic lambda$bindPreferenceToTile$0(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;ILandroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "tile"    # Lcom/android/settingslib/drawer/Tile;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "sourceMetricsCategory"    # I
    .param p5, "preference"    # Landroid/support/v7/preference/Preference;

    .line 169
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->launchIntentOrSelectProfile(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;I)V

    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$bindSummary$1(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    .locals 0
    .param p0, "preference"    # Landroid/support/v7/preference/Preference;
    .param p1, "summary"    # Ljava/lang/String;

    .line 233
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$bindSummary$2(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settingslib/drawer/Tile;Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;
    .param p2, "preference"    # Landroid/support/v7/preference/Preference;

    .line 229
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 230
    .local v0, "providerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/IContentProvider;>;"
    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.summary_uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "uri":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    const-string v3, "com.android.settings.summary"

    invoke-static {v2, v1, v0, v3}, Lcom/android/settingslib/drawer/TileUtils;->getTextFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "summary":Ljava/lang/String;
    new-instance v3, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$f6w3zqqhleyaUiHJCm70VP43jfI;

    invoke-direct {v3, p2, v2}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$f6w3zqqhleyaUiHJCm70VP43jfI;-><init>(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 234
    return-void
.end method

.method private launchIntentOrSelectProfile(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "tile"    # Lcom/android/settingslib/drawer/Tile;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "sourceMetricCategory"    # I

    .line 274
    invoke-direct {p0, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->isIntentResolvable(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    const-string v0, "DashboardFeatureImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot resolve intent, skipping. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/settingslib/drawer/ProfileSelectDialog;->updateUserHandlesIfNeeded(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)V

    .line 279
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p3, p4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logDashboardStartIntent(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 281
    invoke-virtual {p1, p3, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 283
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p3, p4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logDashboardStartIntent(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 284
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {p1, p3, v1, v0}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    goto :goto_0

    .line 286
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settingslib/drawer/ProfileSelectDialog;->show(Landroid/app/FragmentManager;Lcom/android/settingslib/drawer/Tile;)V

    .line 288
    :goto_0
    return-void
.end method


# virtual methods
.method bindIcon(Landroid/support/v7/preference/Preference;Lcom/android/settingslib/drawer/Tile;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .line 242
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.icon_uri"

    .line 245
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    new-instance v0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$6nCUbNprlrw--1aNwFQYcoGh4Oc;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$6nCUbNprlrw--1aNwFQYcoGh4Oc;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settingslib/drawer/Tile;Landroid/support/v7/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 270
    :cond_1
    :goto_0
    return-void
.end method

.method public bindPreferenceToTile(Landroid/app/Activity;ILandroid/support/v7/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)V
    .locals 17
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "sourceMetricsCategory"    # I
    .param p3, "pref"    # Landroid/support/v7/preference/Preference;
    .param p4, "tile"    # Lcom/android/settingslib/drawer/Tile;
    .param p5, "key"    # Ljava/lang/String;
    .param p6, "baseOrder"    # I

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 136
    move/from16 v9, p6

    if-nez v7, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    iget-object v0, v8, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 140
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    move-object/from16 v10, p5

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_1
    move-object/from16 v10, p5

    invoke-virtual {v6, v8}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 145
    :goto_0
    invoke-direct {v6, v7, v8}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->bindSummary(Landroid/support/v7/preference/Preference;Lcom/android/settingslib/drawer/Tile;)V

    .line 146
    invoke-virtual {v6, v7, v8}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->bindIcon(Landroid/support/v7/preference/Preference;Lcom/android/settingslib/drawer/Tile;)V

    .line 147
    iget-object v11, v8, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    .line 148
    .local v11, "metadata":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 149
    .local v0, "clsName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 150
    .local v1, "action":Ljava/lang/String;
    const/4 v2, 0x0

    .line 151
    .local v2, "order":Ljava/lang/Integer;
    if-eqz v11, :cond_2

    .line 152
    const-string v3, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    const-string v3, "com.android.settings.intent.action"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    const-string v3, "com.android.settings.order"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "com.android.settings.order"

    .line 155
    invoke-virtual {v11, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 156
    const-string v3, "com.android.settings.order"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 159
    .end local v0
    .end local v1
    .end local v2
    .local v12, "clsName":Ljava/lang/String;
    .local v13, "action":Ljava/lang/String;
    .local v14, "order":Ljava/lang/Integer;
    :cond_2
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 160
    invoke-virtual {v7, v12}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    goto :goto_1

    .line 161
    :cond_3
    iget-object v0, v8, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_5

    .line 162
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v8, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v15, v0

    .line 163
    .local v15, "intent":Landroid/content/Intent;
    const-string v0, ":settings:source_metrics"

    move/from16 v5, p2

    invoke-virtual {v15, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    if-eqz v13, :cond_4

    .line 166
    invoke-virtual {v15, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    :cond_4
    new-instance v4, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$EctMPOsKyfRtceDMH6yiU0UQS8U;

    move-object v0, v4

    move-object v1, v6

    move-object/from16 v2, p1

    move-object v3, v8

    move-object v6, v4

    move-object v4, v15

    move/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$EctMPOsKyfRtceDMH6yiU0UQS8U;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;I)V

    invoke-virtual {v7, v6}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 173
    .end local v15
    :cond_5
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "skipOffsetPackageName":Ljava/lang/String;
    if-nez v14, :cond_6

    iget v1, v8, Lcom/android/settingslib/drawer/Tile;->priority:I

    if-eqz v1, :cond_6

    .line 179
    iget v1, v8, Lcom/android/settingslib/drawer/Tile;->priority:I

    neg-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 181
    :cond_6
    if-eqz v14, :cond_a

    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, "shouldSkipBaseOrderOffset":Z
    iget-object v2, v8, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_7

    .line 184
    iget-object v2, v8, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    .line 185
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 187
    :cond_7
    if-nez v1, :cond_9

    const v2, 0x7fffffff

    if-ne v9, v2, :cond_8

    goto :goto_2

    .line 190
    :cond_8
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v9

    invoke-virtual {v7, v2}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .end local v1
    goto :goto_3

    .line 188
    .restart local v1
    :cond_9
    :goto_2
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 193
    .end local v1
    :cond_a
    :goto_3
    return-void
.end method

.method public getAllCategories()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/drawer/CategoryManager;->getCategories(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;
    .locals 3
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .line 121
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    return-object v0

    .line 127
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dashboard_tile_pref_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 129
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 122
    .end local v0
    .end local v1
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtraIntentAction()Ljava/lang/String;
    .locals 1

    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/settingslib/drawer/CategoryManager;->getTilesByCategory(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v0

    return-object v0
.end method

.method public openTileIntent(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .line 202
    const v0, 0x8000

    if-nez p2, :cond_0

    .line 203
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 206
    return-void

    .line 209
    .end local v0
    :cond_0
    iget-object v1, p2, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-nez v1, :cond_1

    .line 210
    return-void

    .line 212
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p2, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v2, ":settings:source_metrics"

    .line 213
    const/16 v3, 0x23

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 215
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 216
    .restart local v0
    invoke-direct {p0, p1, p2, v0, v3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->launchIntentOrSelectProfile(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;I)V

    .line 217
    return-void
.end method
