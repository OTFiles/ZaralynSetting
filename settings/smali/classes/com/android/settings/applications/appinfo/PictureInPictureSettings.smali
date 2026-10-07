.class public Lcom/android/settings/applications/appinfo/PictureInPictureSettings;
.super Lcom/android/settings/notification/EmptyTextSettings;
.source "PictureInPictureSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/appinfo/PictureInPictureSettings$AppComparator;
    }
.end annotation


# static fields
.field static final IGNORE_PACKAGE_LIST:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field private mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    const-class v0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->IGNORE_PACKAGE_LIST:Ljava/util/List;

    .line 57
    sget-object v0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->IGNORE_PACKAGE_LIST:Ljava/util/List;

    const-string v1, "com.android.systemui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/android/settings/notification/EmptyTextSettings;-><init>()V

    .line 119
    return-void
.end method

.method public static checkPackageHasPictureInPictureActivities(Ljava/lang/String;[Landroid/content/pm/ActivityInfo;)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "activities"    # [Landroid/content/pm/ActivityInfo;

    .line 101
    sget-object v0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->IGNORE_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 102
    return v1

    .line 107
    :cond_0
    if-eqz p1, :cond_2

    .line 108
    array-length v0, p1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 109
    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    return v2

    .line 108
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 114
    .end local v0
    :cond_2
    return v1
.end method


# virtual methods
.method collectPipApps(I)Ljava/util/ArrayList;
    .locals 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v0, "pipApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/content/pm/ApplicationInfo;Ljava/lang/Integer;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v1, "userIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 202
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v3
    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 206
    .local v3, "id":I
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v4

    .line 208
    .local v4, "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 209
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-static {v7, v8}, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->checkPackageHasPictureInPictureActivities(Ljava/lang/String;[Landroid/content/pm/ActivityInfo;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 211
    new-instance v7, Landroid/util/Pair;

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .end local v6
    :cond_1
    goto :goto_2

    .line 214
    .end local v3
    .end local v4
    :cond_2
    goto :goto_1

    .line 215
    :cond_3
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 191
    const/16 v0, 0x32c

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 186
    const v0, 0x7f150082

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 128
    invoke-super {p0, p1}, Lcom/android/settings/notification/EmptyTextSettings;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->mContext:Landroid/content/Context;

    .line 131
    new-instance v0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 132
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->mUserManager:Landroid/os/UserManager;

    .line 133
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 134
    return-void
.end method

.method public onResume()V
    .locals 13

    .line 138
    invoke-super {p0}, Lcom/android/settings/notification/EmptyTextSettings;->onResume()V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 142
    .local v0, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 146
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 147
    .local v1, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 148
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->collectPipApps(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 149
    .local v2, "pipApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/content/pm/ApplicationInfo;Ljava/lang/Integer;>;>;"
    new-instance v3, Lcom/android/settings/applications/appinfo/PictureInPictureSettings$AppComparator;

    invoke-direct {v3, v1}, Lcom/android/settings/applications/appinfo/PictureInPictureSettings$AppComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    .line 153
    .local v3, "prefContext":Landroid/content/Context;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 154
    .local v5, "appData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ApplicationInfo;Ljava/lang/Integer;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 155
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 156
    .local v7, "userId":I
    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 157
    .local v8, "user":Landroid/os/UserHandle;
    iget-object v9, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 158
    .local v9, "packageName":Ljava/lang/String;
    invoke-virtual {v6, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 160
    .local v10, "label":Ljava/lang/CharSequence;
    new-instance v11, Lcom/android/settings/widget/AppPreference;

    invoke-direct {v11, v3}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;)V

    .line 161
    .local v11, "pref":Landroid/support/v7/preference/Preference;
    iget-object v12, p0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v12, v6, v7}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 162
    invoke-virtual {v1, v10, v8}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    iget v12, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v12, v9}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->getPreferenceSummary(Landroid/content/Context;ILjava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 165
    new-instance v12, Lcom/android/settings/applications/appinfo/PictureInPictureSettings$1;

    invoke-direct {v12, p0, v9, v6}, Lcom/android/settings/applications/appinfo/PictureInPictureSettings$1;-><init>(Lcom/android/settings/applications/appinfo/PictureInPictureSettings;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 174
    invoke-virtual {v0, v11}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 175
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .end local v11
    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 180
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 181
    const v0, 0x7f1209ea

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->setEmptyText(I)V

    .line 182
    return-void
.end method
