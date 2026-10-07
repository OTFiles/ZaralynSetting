.class public abstract Lcom/android/settings/notification/NotificationSettingsBase;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NotificationSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field protected mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

.field protected mArgs:Landroid/os/Bundle;

.field protected mBackend:Lcom/android/settings/notification/NotificationBackend;

.field protected mChannel:Landroid/app/NotificationChannel;

.field protected mChannelComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field protected mChannelGroup:Landroid/app/NotificationChannelGroup;

.field protected mContext:Landroid/content/Context;

.field protected mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/notification/NotificationPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field protected mDynamicPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field protected mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

.field protected mIntent:Landroid/content/Intent;

.field protected mListeningToPackageRemove:Z

.field protected mNm:Landroid/app/NotificationManager;

.field protected final mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

.field protected mPkg:Ljava/lang/String;

.field protected mPkgInfo:Landroid/content/pm/PackageInfo;

.field protected mPm:Landroid/content/pm/PackageManager;

.field protected mShowLegacyChannelConfig:Z

.field protected mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field protected mUid:I

.field protected mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    const-string v0, "NotifiSettingsBase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/NotificationSettingsBase;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 66
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mShowLegacyChannelConfig:Z

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mControllers:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mDynamicPreferences:Ljava/util/List;

    .line 84
    new-instance v0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;-><init>(Lcom/android/settings/notification/NotificationSettingsBase;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    .line 381
    new-instance v0, Lcom/android/settings/notification/NotificationSettingsBase$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationSettingsBase$2;-><init>(Lcom/android/settings/notification/NotificationSettingsBase;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 395
    sget-object v0, Lcom/android/settings/notification/-$$Lambda$NotificationSettingsBase$-zFOM6q-03lCRFkOVmbrRVoBxkk;->INSTANCE:Lcom/android/settings/notification/-$$Lambda$NotificationSettingsBase$-zFOM6q-03lCRFkOVmbrRVoBxkk;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannelComparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 60
    sget-boolean v0, Lcom/android/settings/notification/NotificationSettingsBase;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/NotificationSettingsBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettingsBase;

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->updatePreferenceStates()V

    return-void
.end method

.method private findPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 251
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-gez p2, :cond_0

    goto :goto_1

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 256
    array-length v2, v1

    .line 257
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 258
    aget-object v4, v1, v3

    .line 259
    .local v4, "p":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 261
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPm:Landroid/content/pm/PackageManager;

    const/16 v6, 0x40

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 262
    :catch_0
    move-exception v5

    .line 263
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "NotifiSettingsBase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    .end local v4
    .end local v5
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 268
    .end local v2
    .end local v3
    :cond_2
    return-object v0

    .line 252
    .end local v1
    :cond_3
    :goto_1
    return-object v0
.end method

.method static synthetic lambda$new$0(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)I
    .locals 2
    .param p0, "left"    # Landroid/app/NotificationChannel;
    .param p1, "right"    # Landroid/app/NotificationChannel;

    .line 397
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 398
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    return v0

    .line 399
    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miscellaneous"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    const/4 v0, 0x1

    return v0

    .line 402
    :cond_1
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miscellaneous"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    const/4 v0, -0x1

    return v0

    .line 406
    :cond_2
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private loadAppRow()V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    .line 190
    return-void
.end method

.method private loadChannel()V
    .locals 5

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 181
    .local v2, "channelId":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 182
    const-string v3, ":android:show_fragment_args"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 183
    .local v3, "args":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    const-string v1, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    :cond_1
    move-object v2, v1

    .line 185
    .end local v3
    :cond_2
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/settings/notification/NotificationBackend;->getChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    .line 186
    return-void
.end method

.method private loadChannelGroup()V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/NotificationBackend;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    const-string v0, "miscellaneous"

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    .line 195
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mShowLegacyChannelConfig:Z

    .line 197
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mShowLegacyChannelConfig:Z

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    const-string v3, "miscellaneous"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getGroup(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    .line 203
    .local v0, "group":Landroid/app/NotificationChannelGroup;
    if-eqz v0, :cond_3

    .line 204
    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    .line 207
    .end local v0
    :cond_3
    return-void
.end method


# virtual methods
.method protected collectConfigActivities()V
    .locals 9

    .line 215
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    .line 216
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 218
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 222
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v2, Lcom/android/settings/notification/NotificationSettingsBase;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 223
    const-string v2, "NotifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " preference activities"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    const-string v4, " ;_;"

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 227
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 228
    .local v4, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v5, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    .line 229
    sget-boolean v5, Lcom/android/settings/notification/NotificationSettingsBase;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 230
    const-string v5, "NotifiSettingsBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring duplicate notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 237
    :cond_3
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    const/4 v6, 0x0

    .line 238
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 239
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    .line 240
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v5, :cond_4

    .line 241
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v5, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    const-string v6, "android.intent.extra.CHANNEL_ID"

    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    :cond_4
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v5, :cond_5

    .line 244
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v5, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    const-string v6, "android.intent.extra.CHANNEL_GROUP_ID"

    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    .line 245
    invoke-virtual {v7}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v7

    .line 244
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    .end local v3
    .end local v4
    :cond_5
    goto :goto_1

    .line 248
    :cond_6
    return-void
.end method

.method protected isChannelBlockable(Landroid/app/NotificationChannel;)Z
    .locals 3
    .param p1, "channel"    # Landroid/app/NotificationChannel;

    .line 323
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v1, :cond_3

    .line 324
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 325
    return v2

    .line 328
    :cond_0
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result v1

    if-nez v1, :cond_2

    .line 329
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    .line 328
    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    return v0

    .line 331
    :cond_3
    return v0
.end method

.method protected isChannelConfigurable(Landroid/app/NotificationChannel;)Z
    .locals 2
    .param p1, "channel"    # Landroid/app/NotificationChannel;

    .line 316
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->lockedChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 319
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isChannelGroupBlockable(Landroid/app/NotificationChannelGroup;)Z
    .locals 1
    .param p1, "group"    # Landroid/app/NotificationChannelGroup;

    .line 335
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    if-nez v0, :cond_0

    .line 337
    const/4 v0, 0x1

    return v0

    .line 340
    :cond_0
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    return v0

    .line 342
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mIntent:Landroid/content/Intent;

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mArgs:Landroid/os/Bundle;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPm:Landroid/content/pm/PackageManager;

    .line 97
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mNm:Landroid/app/NotificationManager;

    .line 99
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mArgs:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mArgs:Landroid/os/Bundle;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mArgs:Landroid/os/Bundle;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mIntent:Landroid/content/Intent;

    const-string v1, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mArgs:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mArgs:Landroid/os/Bundle;

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mArgs:Landroid/os/Bundle;

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mIntent:Landroid/content/Intent;

    const-string v1, "app_uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    .line 106
    iget v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    if-gez v0, :cond_2

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    .line 110
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 109
    :catch_0
    move-exception v0

    .line 113
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/NotificationSettingsBase;->findPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 115
    iget v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUserId:I

    .line 116
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfApplicationIsSuspended(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 119
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->loadChannel()V

    .line 120
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->loadAppRow()V

    .line 121
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->loadChannelGroup()V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->collectConfigActivities()V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    const-class v1, Lcom/android/settings/notification/HeaderPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/NotificationSettingsBase;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/NotificationPreferenceController;

    .line 127
    .local v1, "controller":Lcom/android/settings/notification/NotificationPreferenceController;
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/notification/NotificationPreferenceController;->onResume(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 128
    .end local v1
    goto :goto_3

    .line 129
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 133
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mArgs:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 136
    const-string v0, "NotifiSettingsBase"

    const-string v1, "No intent"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->toastAndFinish()V

    .line 138
    return-void

    .line 141
    :cond_0
    iget v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->startListeningToPackageRemove()V

    .line 148
    return-void

    .line 142
    :cond_2
    :goto_0
    const-string v0, "NotifiSettingsBase"

    const-string v1, "Missing package or uid or packageinfo"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->toastAndFinish()V

    .line 144
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->stopListeningToPackageRemove()V

    .line 153
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroy()V

    .line 154
    return-void
.end method

.method protected onPackageRemoved()V
    .locals 1

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 379
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 158
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 159
    iget v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-nez v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->loadAppRow()V

    .line 168
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-nez v0, :cond_1

    .line 169
    const-string v0, "NotifiSettingsBase"

    const-string v1, "Can\'t load package"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->finish()V

    .line 171
    return-void

    .line 173
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->loadChannel()V

    .line 174
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->loadChannelGroup()V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->collectConfigActivities()V

    .line 176
    return-void

    .line 160
    :cond_2
    :goto_0
    const-string v0, "NotifiSettingsBase"

    const-string v1, "Missing package or uid or packageinfo"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->finish()V

    .line 162
    return-void
.end method

.method protected populateSingleChannelPrefs(Landroid/support/v7/preference/PreferenceGroup;Landroid/app/NotificationChannel;Z)Landroid/support/v7/preference/Preference;
    .locals 5
    .param p1, "parent"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "channel"    # Landroid/app/NotificationChannel;
    .param p3, "groupBlocked"    # Z

    .line 273
    new-instance v0, Lcom/android/settings/widget/MasterCheckBoxPreference;

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/MasterCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 275
    .local v0, "channelPref":Lcom/android/settings/widget/MasterCheckBoxPreference;
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 276
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/NotificationSettingsBase;->isChannelBlockable(Landroid/app/NotificationChannel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/NotificationSettingsBase;->isChannelConfigurable(Landroid/app/NotificationChannel;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p3, :cond_0

    .line 275
    move v1, v3

    goto :goto_0

    .line 277
    :cond_0
    nop

    .line 275
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterCheckBoxPreference;->setCheckBoxEnabled(Z)V

    .line 279
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 281
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    if-eqz v1, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/MasterCheckBoxPreference;->setChecked(Z)V

    .line 282
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 283
    .local v1, "channelArgs":Landroid/os/Bundle;
    const-string v2, "uid"

    iget v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 284
    const-string v2, "package"

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v2, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v2, "fromSettings"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 287
    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v4, Lcom/android/settings/notification/ChannelNotificationSettings;

    .line 288
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    .line 289
    invoke-virtual {v2, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    const v4, 0x7f120959

    .line 290
    invoke-virtual {v2, v4}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getMetricsCategory()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    .line 292
    invoke-virtual {v2}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, ":android:no_headers"

    .line 293
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string v4, ":android:extra_user_argument"

    .line 294
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 287
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/MasterCheckBoxPreference;->setIntent(Landroid/content/Intent;)V

    .line 296
    new-instance v2, Lcom/android/settings/notification/NotificationSettingsBase$1;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/notification/NotificationSettingsBase$1;-><init>(Lcom/android/settings/notification/NotificationSettingsBase;Landroid/app/NotificationChannel;)V

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/MasterCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 311
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 312
    return-object v0
.end method

.method protected setVisible(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;Z)V
    .locals 1
    .param p1, "parent"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "p"    # Landroid/support/v7/preference/Preference;
    .param p3, "visible"    # Z

    .line 350
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 351
    .local v0, "isVisible":Z
    :goto_0
    if-ne v0, p3, :cond_1

    return-void

    .line 352
    :cond_1
    if-eqz p3, :cond_2

    .line 353
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 355
    :cond_2
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 357
    :goto_1
    return-void
.end method

.method protected startListeningToPackageRemove()V
    .locals 3

    .line 360
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mListeningToPackageRemove:Z

    if-eqz v0, :cond_0

    .line 361
    return-void

    .line 363
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mListeningToPackageRemove:Z

    .line 364
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 367
    return-void
.end method

.method protected stopListeningToPackageRemove()V
    .locals 2

    .line 370
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mListeningToPackageRemove:Z

    if-nez v0, :cond_0

    .line 371
    return-void

    .line 373
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mListeningToPackageRemove:Z

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 375
    return-void
.end method

.method protected toastAndFinish()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    const v1, 0x7f120132

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 212
    return-void
.end method
