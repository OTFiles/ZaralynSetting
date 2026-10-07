.class public Lcom/android/settings/users/UserSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/UserSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddUser:Lcom/android/settingslib/RestrictedPreference;

.field private mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

.field private mAddedUserId:I

.field private mAddingUser:Z

.field private mAddingUserName:Ljava/lang/String;

.field private mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

.field private mHandler:Landroid/os/Handler;

.field private mMePreference:Lcom/android/settings/users/UserPreference;

.field private mRemovingUserId:I

.field private mShouldUpdateUserList:Z

.field private mUserCaps:Lcom/android/settings/users/UserCapabilities;

.field private mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

.field private final mUserLock:Ljava/lang/Object;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 147
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/settings/users/UserSettings;->sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;

    .line 1154
    sget-object v0, Lcom/android/settings/users/-$$Lambda$UserSettings$Eg6plZiaX7G7UUvF4Q46lU8PMRw;->INSTANCE:Lcom/android/settings/users/-$$Lambda$UserSettings$Eg6plZiaX7G7UUvF4Q46lU8PMRw;

    sput-object v0, Lcom/android/settings/users/UserSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 1157
    new-instance v0, Lcom/android/settings/users/UserSettings$14;

    invoke-direct {v0}, Lcom/android/settings/users/UserSettings$14;-><init>()V

    sput-object v0, Lcom/android/settings/users/UserSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    .line 144
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    .line 146
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    .line 149
    new-instance v0, Lcom/android/settings/users/EditUserInfoController;

    invoke-direct {v0}, Lcom/android/settings/users/EditUserInfoController;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    .line 155
    new-instance v0, Lcom/android/settings/users/UserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$1;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    .line 172
    new-instance v0, Lcom/android/settings/users/UserSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$2;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 92
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;
    .param p1, "x1"    # I

    .line 92
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->onUserCreated(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/users/UserSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 92
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;
    .param p1, "x1"    # I

    .line 92
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->switchUserNow(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;
    .param p1, "x1"    # I

    .line 92
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->onAddUserClicked(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 92
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->launchChooseLockscreen()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 92
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->exitGuest()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/users/UserSettings;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 92
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 92
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->createTrustedUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 92
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->createRestrictedProfile()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/settings/users/UserSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;
    .param p1, "x1"    # Z

    .line 92
    iput-boolean p1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/settings/users/UserSettings;)Lcom/android/settings/users/UserCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 92
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/users/UserSettings;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/UserSettings;->onManageUserClicked(IZ)V

    return-void
.end method

.method static synthetic access$2000(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;
    .param p1, "x1"    # I

    .line 92
    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/users/UserSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 92
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/users/UserSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;
    .param p1, "x1"    # I

    .line 92
    iput p1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/users/UserSettings;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 92
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 92
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/users/UserSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .line 92
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->finishLoadProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 92
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .line 92
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeUserNow()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;
    .param p1, "x1"    # I

    .line 92
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    return-void
.end method

.method private addUserNow(I)V
    .locals 2
    .param p1, "userType"    # I

    .line 706
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 707
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    .line 708
    if-ne p1, v1, :cond_0

    const v1, 0x7f120fbf

    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 709
    :cond_0
    const v1, 0x7f120fbe

    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    .line 711
    new-instance v1, Lcom/android/settings/users/UserSettings$12;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/users/UserSettings$12;-><init>(Lcom/android/settings/users/UserSettings;I)V

    .line 739
    invoke-virtual {v1}, Lcom/android/settings/users/UserSettings$12;->start()V

    .line 740
    monitor-exit v0

    .line 741
    return-void

    .line 740
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static assignDefaultPhoto(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 1099
    if-nez p0, :cond_0

    .line 1100
    const/4 v0, 0x0

    return v0

    .line 1102
    :cond_0
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1103
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/settings/users/UserSettings;->getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1104
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, p1, v1}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 1106
    const/4 v2, 0x1

    return v2
.end method

.method static copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .line 1111
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 1113
    .local v0, "contactUri":Landroid/net/Uri;
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 1115
    .local v1, "userId":I
    :goto_0
    nop

    .line 1116
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    .line 1115
    invoke-static {v2, v0, v3}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v2

    .line 1119
    .local v2, "avatarDataStream":Ljava/io/InputStream;
    if-nez v2, :cond_1

    .line 1120
    invoke-static {p0, v1}, Lcom/android/settings/users/UserSettings;->assignDefaultPhoto(Landroid/content/Context;I)Z

    .line 1121
    return-void

    .line 1124
    :cond_1
    const-string v3, "user"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1125
    .local v3, "um":Landroid/os/UserManager;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1126
    .local v4, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v1, v4}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 1128
    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1130
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1129
    :catch_0
    move-exception v5

    .line 1131
    :goto_1
    return-void
.end method

.method private createRestrictedProfile()Landroid/content/pm/UserInfo;
    .locals 3

    .line 429
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->createRestrictedProfile(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 430
    .local v0, "newUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v2}, Lcom/android/settings/users/UserSettings;->assignDefaultPhoto(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 431
    const/4 v1, 0x0

    return-object v1

    .line 433
    :cond_0
    return-object v0
.end method

.method private createTrustedUser()Landroid/content/pm/UserInfo;
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 438
    .local v0, "newUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v2}, Lcom/android/settings/users/UserSettings;->assignDefaultPhoto(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 439
    const/4 v1, 0x0

    return-object v1

    .line 441
    :cond_0
    return-object v0
.end method

.method private encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .line 1019
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settingslib/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/CircleFramedDrawable;

    move-result-object v0

    .line 1020
    .local v0, "circled":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method private exitGuest()V
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-nez v0, :cond_0

    .line 757
    return-void

    .line 759
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeThisUser()V

    .line 760
    return-void
.end method

.method private finishLoadProfile(Ljava/lang/String;)V
    .locals 4
    .param p1, "profileName"    # Ljava/lang/String;

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const v1, 0x7f120fd4

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/users/UserSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 367
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 368
    .local v0, "myUserId":I
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 369
    .local v1, "b":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 370
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 371
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 373
    :cond_1
    return-void
.end method

.method private static getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "userId"    # I

    .line 1078
    const/4 v0, 0x0

    .line 1080
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v1, Lcom/android/settings/users/UserSettings;->sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1081
    if-nez v0, :cond_0

    .line 1082
    const/4 v1, 0x0

    .line 1083
    invoke-static {p0, p1, v1}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1082
    invoke-static {v1}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1085
    sget-object v1, Lcom/android/settings/users/UserSettings;->sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1087
    :cond_0
    return-object v0
.end method

.method private getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 967
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 968
    nop

    .line 969
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, -0x2710

    invoke-static {v0, v1}, Lcom/android/settings/users/UserSettings;->getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 968
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getMaxRealUsers()I
    .locals 6

    .line 933
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 934
    .local v0, "maxUsersAndGuest":I
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 936
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v2, 0x0

    .line 937
    .local v2, "managedProfiles":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 938
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 939
    add-int/lit8 v2, v2, 0x1

    .line 941
    .end local v4
    :cond_0
    goto :goto_0

    .line 942
    :cond_1
    sub-int v3, v0, v2

    return v3
.end method

.method private hasLockscreenSecurity()Z
    .locals 2

    .line 376
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 377
    .local v0, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    return v1
.end method

.method private isInitialized(Landroid/content/pm/UserInfo;)Z
    .locals 1
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .line 1015
    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$static$1(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .line 1155
    new-instance v0, Lcom/android/settings/users/UserSettings$SummaryProvider;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/users/UserSettings$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-object v0
.end method

.method public static synthetic lambda$updateUserList$0(Lcom/android/settings/users/UserSettings;ILandroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "finalGuestId"    # I
    .param p2, "preference"    # Landroid/support/v7/preference/Preference;

    .line 872
    move v0, p1

    .line 873
    .local v0, "id":I
    const/16 v1, -0xb

    if-ne v0, v1, :cond_0

    .line 874
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    .line 875
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 874
    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 876
    .local v1, "guest":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    .line 877
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    .line 881
    .end local v1
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 884
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 882
    :catch_0
    move-exception v1

    .line 883
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 885
    .end local v1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private launchChooseLockscreen()V
    .locals 3

    .line 381
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, "chooseLockIntent":Landroid/content/Intent;
    const-string v1, "minimum_quality"

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/users/UserSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 385
    return-void
.end method

.method private loadIconsAsync(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 946
    .local p1, "missingIcons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/android/settings/users/UserSettings$13;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$13;-><init>(Lcom/android/settings/users/UserSettings;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 963
    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserSettings$13;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 964
    return-void
.end method

.method private loadProfile()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 342
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const v1, 0x7f120fb4

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserPreference;->setTitle(I)V

    .line 343
    return-void

    .line 346
    :cond_0
    new-instance v0, Lcom/android/settings/users/UserSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$3;-><init>(Lcom/android/settings/users/UserSettings;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 361
    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserSettings$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 362
    return-void
.end method

.method private onAddUserClicked(I)V
    .locals 3
    .param p1, "userType"    # I

    .line 401
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    :try_start_0
    iget v1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-nez v1, :cond_1

    .line 403
    const/4 v1, 0x2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 408
    :pswitch_0    # 0x2
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->hasLockscreenSecurity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    invoke-direct {p0, v1}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    goto :goto_0

    .line 411
    :cond_0
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_0

    .line 405
    :pswitch_1    # 0x1
    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 406
    nop

    .line 416
    :cond_1
    :goto_0
    monitor-exit v0

    .line 417
    return-void

    .line 416
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method private onManageUserClicked(IZ)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "newUser"    # Z

    .line 445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    .line 446
    const/16 v0, -0xb

    if-ne p1, v0, :cond_0

    .line 447
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 448
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "guest_user"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 449
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/users/UserDetailsSettings;

    .line 450
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 451
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f120fb5

    .line 452
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 454
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 455
    return-void

    .line 457
    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 458
    .local v0, "info":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v1, v1, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-eqz v1, :cond_1

    .line 459
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 460
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "user_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 461
    const-string v2, "new_user"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 462
    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v3, Lcom/android/settings/users/RestrictedProfileSettings;

    .line 463
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    .line 464
    invoke-virtual {v2, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    const v3, 0x7f120fc8

    .line 465
    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    .line 466
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getMetricsCategory()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    .line 467
    invoke-virtual {v2}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 468
    .end local v1
    goto :goto_0

    :cond_1
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 470
    invoke-static {p0}, Lcom/android/settings/users/OwnerInfoSettings;->show(Landroid/app/Fragment;)V

    goto :goto_0

    .line 471
    :cond_2
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v1, v1, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-eqz v1, :cond_3

    .line 472
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 473
    .restart local v1
    const-string v2, "user_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 474
    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v3, Lcom/android/settings/users/UserDetailsSettings;

    .line 475
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    .line 476
    invoke-virtual {v2, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 477
    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    .line 478
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getMetricsCategory()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    .line 479
    invoke-virtual {v2}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 481
    .end local v1
    :cond_3
    :goto_0
    return-void
.end method

.method private onRemoveUserClicked(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 420
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 421
    :try_start_0
    iget v1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-nez v1, :cond_0

    .line 422
    iput p1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 423
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 425
    :cond_0
    monitor-exit v0

    .line 426
    return-void

    .line 425
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onUserCreated(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 484
    iput p1, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    .line 485
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    const-string v0, "UserSettings"

    const-string v1, "Cannot show dialog after onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_0

    .line 493
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 495
    :goto_0
    return-void
.end method

.method private removeThisUser()V
    .locals 3

    .line 693
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    const-string v0, "UserSettings"

    const-string v1, "Cannot remove current user when switching is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    return-void

    .line 698
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 699
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    .line 702
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "UserSettings"

    const-string v2, "Unable to remove self user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    .end local v0
    :goto_0
    return-void
.end method

.method private removeUserNow()V
    .locals 2

    .line 678
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 679
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeThisUser()V

    goto :goto_0

    .line 681
    :cond_0
    new-instance v0, Lcom/android/settings/users/UserSettings$11;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$11;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 688
    invoke-virtual {v0}, Lcom/android/settings/users/UserSettings$11;->start()V

    .line 690
    :goto_0
    return-void
.end method

.method private setPhotoId(Landroid/support/v7/preference/Preference;Landroid/content/pm/UserInfo;)V
    .locals 2
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;
    .param p2, "user"    # Landroid/content/pm/UserInfo;

    .line 975
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 976
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 977
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 979
    :cond_0
    return-void
.end method

.method private switchUserNow(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 745
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 748
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 746
    :catch_0
    move-exception v0

    .line 749
    :goto_0
    return-void
.end method

.method private updateUserList()V
    .locals 21

    .line 763
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 764
    :cond_0
    iget-object v1, v0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 765
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 767
    .local v3, "context":Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    .line 768
    .local v4, "voiceCapable":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 769
    .local v5, "missingIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 770
    .local v6, "userPreferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/users/UserPreference;>;"
    const/16 v7, -0xb

    .line 771
    .local v7, "guestId":I
    iget-object v8, v0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v9, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 774
    .local v9, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v12

    if-nez v12, :cond_1

    .line 777
    goto :goto_0

    .line 780
    :cond_1
    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-ne v12, v13, :cond_2

    .line 781
    iget-object v10, v0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    .local v10, "pref":Lcom/android/settings/users/UserPreference;
    goto/16 :goto_5

    .line 782
    .end local v10
    :cond_2
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 784
    iget v7, v9, Landroid/content/pm/UserInfo;->id:I

    .line 785
    goto :goto_0

    .line 795
    :cond_3
    iget-object v12, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v12, v12, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-eqz v12, :cond_5

    if-nez v4, :cond_4

    .line 796
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_4
    move v12, v2

    goto :goto_1

    :cond_5
    move v12, v10

    .line 797
    .local v12, "showSettings":Z
    :goto_1
    iget-object v13, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v13, v13, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-eqz v13, :cond_6

    if-nez v4, :cond_6

    .line 798
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v13

    if-nez v13, :cond_6

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v13

    if-nez v13, :cond_6

    move v13, v2

    goto :goto_2

    :cond_6
    move v13, v10

    .line 799
    .local v13, "showDelete":Z
    :goto_2
    new-instance v20, Lcom/android/settings/users/UserPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    .line 800
    if-eqz v12, :cond_7

    .line 801
    move-object/from16 v18, v0

    goto :goto_3

    .line 800
    :cond_7
    nop

    .line 801
    move-object/from16 v18, v11

    :goto_3
    if-eqz v13, :cond_8

    move-object/from16 v19, v0

    goto :goto_4

    :cond_8
    move-object/from16 v19, v11

    :goto_4
    move v11, v14

    move-object/from16 v14, v20

    move/from16 v17, v11

    invoke-direct/range {v14 .. v19}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    move-object/from16 v11, v20

    .line 802
    .local v11, "pref":Lcom/android/settings/users/UserPreference;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "id="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/settings/users/UserPreference;->setKey(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 805
    const v14, 0x7f120f8a

    invoke-virtual {v11, v14}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    .line 807
    :cond_9
    iget-object v14, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v14}, Lcom/android/settings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 808
    invoke-virtual {v11, v10}, Lcom/android/settings/users/UserPreference;->setSelectable(Z)V

    .line 810
    .end local v12
    .end local v13
    move-object v10, v11

    .end local v11
    .restart local v10
    :goto_5
    if-nez v10, :cond_a

    .line 811
    goto/16 :goto_0

    .line 813
    :cond_a
    invoke-direct {v0, v9}, Lcom/android/settings/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 814
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 815
    const v11, 0x7f120fd2

    invoke-virtual {v10, v11}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    goto :goto_6

    .line 817
    :cond_b
    const v11, 0x7f120fd1

    invoke-virtual {v10, v11}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    .line 821
    :goto_6
    iget-object v11, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v11, v11, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    if-nez v11, :cond_d

    .line 822
    invoke-virtual {v10, v0}, Lcom/android/settings/users/UserPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 823
    invoke-virtual {v10, v2}, Lcom/android/settings/users/UserPreference;->setSelectable(Z)V

    goto :goto_7

    .line 825
    :cond_c
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 826
    const v11, 0x7f120fd3

    invoke-virtual {v10, v11}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    .line 828
    :cond_d
    :goto_7
    iget-object v11, v9, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v11, :cond_f

    .line 829
    iget-object v11, v0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_e

    .line 831
    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 834
    :cond_e
    invoke-direct {v0, v10, v9}, Lcom/android/settings/users/UserSettings;->setPhotoId(Landroid/support/v7/preference/Preference;Landroid/content/pm/UserInfo;)V

    goto :goto_8

    .line 838
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 840
    .end local v9
    .end local v10
    :goto_8
    goto/16 :goto_0

    .line 843
    :cond_10
    iget-boolean v8, v0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-eqz v8, :cond_11

    .line 844
    new-instance v8, Lcom/android/settings/users/UserPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v15, -0xa

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v8

    invoke-direct/range {v12 .. v17}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 846
    .local v8, "pref":Lcom/android/settings/users/UserPreference;
    invoke-virtual {v8, v10}, Lcom/android/settings/users/UserPreference;->setEnabled(Z)V

    .line 847
    iget-object v9, v0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/settings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 848
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 849
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    .end local v8
    :cond_11
    iget-object v8, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v8, v8, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-nez v8, :cond_16

    iget-object v8, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v8, v8, Lcom/android/settings/users/UserCapabilities;->mCanAddGuest:Z

    if-nez v8, :cond_12

    iget-object v8, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v8, v8, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    if-eqz v8, :cond_16

    .line 856
    :cond_12
    new-instance v8, Lcom/android/settings/users/UserPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v15, -0xb

    .line 858
    iget-object v9, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v9, v9, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-eqz v9, :cond_13

    if-eqz v4, :cond_13

    move-object/from16 v16, v0

    goto :goto_9

    :cond_13
    move-object/from16 v16, v11

    :goto_9
    const/16 v17, 0x0

    move-object v12, v8

    invoke-direct/range {v12 .. v17}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 860
    .restart local v8
    const v9, 0x7f120fb5

    invoke-virtual {v8, v9}, Lcom/android/settings/users/UserPreference;->setTitle(I)V

    .line 861
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 862
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    iget-object v9, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v9, v9, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUser:Z

    if-eqz v9, :cond_14

    .line 864
    iget-object v9, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-object v9, v9, Lcom/android/settings/users/UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v8, v9}, Lcom/android/settings/users/UserPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_a

    .line 865
    :cond_14
    iget-object v9, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v9, v9, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    if-eqz v9, :cond_15

    .line 866
    invoke-static {v3}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings/users/UserPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_a

    .line 868
    :cond_15
    invoke-virtual {v8, v11}, Lcom/android/settings/users/UserPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 870
    :goto_a
    move v9, v7

    .line 871
    .local v9, "finalGuestId":I
    new-instance v12, Lcom/android/settings/users/-$$Lambda$UserSettings$wMqzhBHYMbgNNY7TSuzlNB8n9UY;

    invoke-direct {v12, v0, v9}, Lcom/android/settings/users/-$$Lambda$UserSettings$wMqzhBHYMbgNNY7TSuzlNB8n9UY;-><init>(Lcom/android/settings/users/UserSettings;I)V

    invoke-virtual {v8, v12}, Lcom/android/settings/users/UserPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 890
    .end local v8
    .end local v9
    :cond_16
    sget-object v8, Lcom/android/settings/users/UserPreference;->SERIAL_NUMBER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 892
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 895
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_17

    .line 896
    invoke-direct {v0, v5}, Lcom/android/settings/users/UserSettings;->loadIconsAsync(Ljava/util/List;)V

    .line 900
    :cond_17
    iget-object v8, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 902
    iget-object v8, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v8, v8, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    if-eqz v8, :cond_18

    .line 903
    iget-object v8, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    const v9, 0x7f120fbb

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    goto :goto_b

    .line 905
    :cond_18
    iget-object v8, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 908
    :goto_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/users/UserPreference;

    .line 909
    .local v9, "userPreference":Lcom/android/settings/users/UserPreference;
    const v12, 0x7fffffff

    invoke-virtual {v9, v12}, Lcom/android/settings/users/UserPreference;->setOrder(I)V

    .line 910
    iget-object v12, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v12, v9}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 911
    .end local v9
    goto :goto_c

    .line 914
    :cond_19
    iget-object v8, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v8, v8, Lcom/android/settings/users/UserCapabilities;->mCanAddUser:Z

    if-nez v8, :cond_1a

    iget-object v8, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v8, v8, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    if-eqz v8, :cond_1e

    .line 915
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 916
    iget-object v8, v0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result v8

    .line 917
    .local v8, "moreUsers":Z
    iget-object v9, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v8, :cond_1b

    iget-boolean v12, v0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-nez v12, :cond_1b

    move v12, v2

    goto :goto_d

    :cond_1b
    move v12, v10

    :goto_d
    invoke-virtual {v9, v12}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 918
    if-nez v8, :cond_1c

    .line 919
    iget-object v9, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    const v12, 0x7f120f7d

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getMaxRealUsers()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v2, v10

    invoke-virtual {v0, v12, v2}, Lcom/android/settings/users/UserSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 921
    :cond_1c
    iget-object v2, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v2, v11}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 923
    :goto_e
    iget-object v2, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v2}, Lcom/android/settingslib/RestrictedPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 924
    iget-object v2, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    .line 925
    iget-object v9, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v9, v9, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUser:Z

    if-eqz v9, :cond_1d

    iget-object v9, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-object v11, v9, Lcom/android/settings/users/UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    nop

    .line 924
    :cond_1d
    invoke-virtual {v2, v11}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 929
    .end local v8
    :cond_1e
    return-void
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 1
    .param p1, "dialogId"    # I

    .line 653
    packed-switch p1, :pswitch_data_0

    .line 673
    const/4 v0, 0x0

    return v0

    .line 671
    :pswitch_0    # 0x9
    const/16 v0, 0x259

    return v0

    .line 669
    :pswitch_1    # 0x8
    const/16 v0, 0x258

    return v0

    .line 667
    :pswitch_2    # 0x7
    const/16 v0, 0x257

    return v0

    .line 665
    :pswitch_3    # 0x6
    const/16 v0, 0x256

    return v0

    .line 657
    :pswitch_4    # 0x5
    const/16 v0, 0x252

    return v0

    .line 663
    :pswitch_5    # 0x4
    const/16 v0, 0x255

    return v0

    .line 661
    :pswitch_6    # 0x3
    const/16 v0, 0x254

    return v0

    .line 659
    :pswitch_7    # 0x2
    const/16 v0, 0x253

    return v0

    .line 655
    :pswitch_8    # 0x1
    const/16 v0, 0x24f

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8    # 0x1
        :pswitch_7    # 0x2
        :pswitch_6    # 0x3
        :pswitch_5    # 0x4
        :pswitch_4    # 0x5
        :pswitch_3    # 0x6
        :pswitch_2    # 0x7
        :pswitch_1    # 0x8
        :pswitch_0    # 0x9
    .end packed-switch
.end method

.method public getHelpResource()I
    .locals 1

    .line 1056
    const v0, 0x7f1206e0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 189
    const/16 v0, 0x60

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 389
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 391
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 392
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->hasLockscreenSecurity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    goto :goto_0

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/users/EditUserInfoController;->onActivityResult(IILandroid/content/Intent;)V

    .line 398
    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 1025
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/users/UserPreference;

    if-eqz v0, :cond_3

    .line 1026
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/users/UserPreference;

    invoke-virtual {v0}, Lcom/android/settings/users/UserPreference;->getUserId()I

    move-result v0

    .line 1027
    .local v0, "userId":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0260

    if-eq v1, v2, :cond_2

    const v2, 0x7f0a0474

    if-eq v1, v2, :cond_0

    .end local v0
    goto :goto_0

    .line 1029
    .restart local v0
    :cond_0
    nop

    .line 1030
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "no_remove_user"

    .line 1031
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 1030
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 1032
    .local v1, "removeDisallowedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v1, :cond_1

    .line 1033
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 1036
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->onRemoveUserClicked(I)V

    .line 1038
    goto :goto_0

    .line 1040
    .end local v1
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/users/UserSettings;->onManageUserClicked(IZ)V

    .line 1044
    .end local v0
    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 194
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 195
    const v0, 0x7f1500b9

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->addPreferencesFromResource(I)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 198
    return-void

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 201
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    const-string v3, "user_settings_add_users_when_locked"

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-direct {v1, v0, v3, v4}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 204
    .local v1, "screen":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v3, v1}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 206
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v3}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    .line 207
    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 209
    if-eqz p1, :cond_3

    .line 210
    const-string v3, "adding_user"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    const-string v3, "adding_user"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    .line 213
    :cond_1
    const-string v3, "removing_user"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 214
    const-string v3, "removing_user"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 216
    :cond_2
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v3, p1}, Lcom/android/settings/users/EditUserInfoController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 219
    :cond_3
    invoke-static {v0}, Lcom/android/settings/users/UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    .line 220
    const-string v3, "user"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    .line 221
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    if-nez v3, :cond_4

    .line 222
    return-void

    .line 225
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    .line 227
    .local v10, "myUserId":I
    const-string v3, "user_list"

    invoke-virtual {p0, v3}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    .line 228
    new-instance v3, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    move v7, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v3, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    .line 231
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const-string v4, "user_me"

    invoke-virtual {v3, v4}, Lcom/android/settings/users/UserPreference;->setKey(Ljava/lang/String;)V

    .line 232
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/users/UserPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 233
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-eqz v3, :cond_5

    .line 234
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const v4, 0x7f120f8a

    invoke-virtual {v3, v4}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    .line 236
    :cond_5
    const-string v3, "user_add"

    invoke-virtual {p0, v3}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/RestrictedPreference;

    iput-object v3, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    .line 237
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v3, v2}, Lcom/android/settingslib/RestrictedPreference;->useAdminDisabledSummary(Z)V

    .line 239
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings/users/UserCapabilities;->mCanAddUser:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 240
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/settingslib/RestrictedPreference;->setVisible(Z)V

    .line 241
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v3, p0}, Lcom/android/settingslib/RestrictedPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 243
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    if-nez v3, :cond_7

    .line 244
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    const v4, 0x7f120f83

    invoke-virtual {v3, v4}, Lcom/android/settingslib/RestrictedPreference;->setTitle(I)V

    goto :goto_0

    .line 247
    :cond_6
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v3, v2}, Lcom/android/settingslib/RestrictedPreference;->setVisible(Z)V

    .line 249
    :cond_7
    :goto_0
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v9, v3

    .line 250
    .local v9, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v9, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    move-object v6, v9

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 252
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->loadProfile()V

    .line 253
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    .line 254
    iput-boolean v2, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    .line 255
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .param p1, "dialogId"    # I

    .line 506
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 507
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 508
    :cond_0
    const v2, 0x104000a

    const/4 v3, 0x2

    const/high16 v4, 0x1040000

    packed-switch p1, :pswitch_data_0

    .line 647
    return-object v1

    .line 637
    :pswitch_0    # 0x9
    iget-object v5, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    .line 640
    invoke-virtual {v1}, Lcom/android/settings/users/UserPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    const v9, 0x7f120a75

    .line 643
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    .line 637
    move-object v6, p0

    move-object v10, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/settings/users/EditUserInfoController;->createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;

    move-result-object v1

    .line 644
    .local v1, "dlg":Landroid/app/Dialog;
    return-object v1

    .line 622
    .end local v1
    :pswitch_1    # 0x8
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f120fb2

    .line 623
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f120fb1

    .line 624
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f120fb3

    new-instance v5, Lcom/android/settings/users/UserSettings$10;

    invoke-direct {v5, p0}, Lcom/android/settings/users/UserSettings$10;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 625
    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 632
    invoke-virtual {v2, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 633
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 634
    .restart local v1
    return-object v1

    .line 608
    .end local v1
    :pswitch_2    # 0x7
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f120fbd

    .line 609
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f120fc9

    new-instance v5, Lcom/android/settings/users/UserSettings$9;

    invoke-direct {v5, p0}, Lcom/android/settings/users/UserSettings$9;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 610
    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 617
    invoke-virtual {v2, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 618
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 619
    .restart local v1
    return-object v1

    .line 581
    .end local v1
    :pswitch_3    # 0x6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 583
    .local v2, "addUserItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "title"

    const v5, 0x7f120f82

    invoke-virtual {p0, v5}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const-string v4, "summary"

    const v5, 0x7f120f81

    invoke-virtual {p0, v5}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v10, v4

    .line 586
    .local v10, "addProfileItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "title"

    const v5, 0x7f120f80

    invoke-virtual {p0, v5}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const-string v4, "summary"

    const v5, 0x7f120f7f

    invoke-virtual {p0, v5}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v11, v4

    .line 591
    .local v11, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v12, Landroid/widget/SimpleAdapter;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0d0217

    const-string v4, "title"

    const-string v6, "summary"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v8

    new-array v9, v3, [I

    fill-array-data v9, :array_0

    move-object v4, v12

    move-object v6, v1

    invoke-direct/range {v4 .. v9}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    move-object v3, v12

    .line 595
    .local v3, "adapter":Landroid/widget/SimpleAdapter;
    const v4, 0x7f120f88

    invoke-virtual {v11, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 596
    new-instance v4, Lcom/android/settings/users/UserSettings$8;

    invoke-direct {v4, p0}, Lcom/android/settings/users/UserSettings$8;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 605
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 521
    .end local v1
    .end local v2
    .end local v3
    .end local v10
    .end local v11
    :pswitch_4    # 0x5
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f120f8c

    .line 522
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 523
    invoke-virtual {v3, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 524
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 521
    return-object v1

    .line 568
    :pswitch_5    # 0x4
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f120fcf

    .line 569
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v5, Lcom/android/settings/users/UserSettings$7;

    invoke-direct {v5, p0}, Lcom/android/settings/users/UserSettings$7;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 570
    invoke-virtual {v3, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 576
    invoke-virtual {v2, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 577
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 578
    .local v1, "dlg":Landroid/app/Dialog;
    return-object v1

    .line 554
    .end local v1
    :pswitch_6    # 0x3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f120fce

    .line 555
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f120fcd

    .line 556
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f120fcc

    new-instance v4, Lcom/android/settings/users/UserSettings$6;

    invoke-direct {v4, p0}, Lcom/android/settings/users/UserSettings$6;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 557
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f120fcb

    .line 563
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 564
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 565
    .restart local v1
    return-object v1

    .line 526
    .end local v1
    :pswitch_7    # 0x2
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 528
    .local v5, "preferences":Landroid/content/SharedPreferences;
    const-string v7, "key_add_user_long_message_displayed"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 530
    .local v6, "longMessageDisplayed":Z
    if-eqz v6, :cond_1

    .line 531
    const v7, 0x7f120f85

    goto :goto_0

    .line 532
    :cond_1
    const v7, 0x7f120f84

    .line 533
    .local v7, "messageResId":I
    :goto_0
    if-ne p1, v3, :cond_2

    .line 534
    const/4 v3, 0x1

    nop

    .line 535
    .local v3, "userType":I
    :cond_2
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f120f87

    .line 536
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 537
    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/settings/users/UserSettings$5;

    invoke-direct {v9, p0, v3, v6, v5}, Lcom/android/settings/users/UserSettings$5;-><init>(Lcom/android/settings/users/UserSettings;IZLandroid/content/SharedPreferences;)V

    .line 538
    invoke-virtual {v8, v2, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 549
    invoke-virtual {v2, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 550
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 551
    .restart local v1
    return-object v1

    .line 510
    .end local v1
    .end local v3
    .end local v5
    .end local v6
    .end local v7
    :pswitch_8    # 0x1
    nop

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    new-instance v3, Lcom/android/settings/users/UserSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/users/UserSettings$4;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-static {v1, v2, v3}, Lcom/android/settings/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v1

    .line 518
    .restart local v1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8    # 0x1
        :pswitch_7    # 0x2
        :pswitch_6    # 0x3
        :pswitch_5    # 0x4
        :pswitch_4    # 0x5
        :pswitch_3    # 0x6
        :pswitch_2    # 0x7
        :pswitch_1    # 0x8
        :pswitch_0    # 0x9
    .end packed-switch

    :array_0
    .array-data 4
        0x7f0a0468
        0x7f0a0414
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, "pos":I
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 313
    .local v1, "um":Landroid/os/UserManager;
    const-string v2, "no_remove_user"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 314
    .local v2, "allowRemoveUser":Z
    invoke-virtual {v1}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v4

    .line 315
    .local v4, "canSwitchUsers":Z
    iget-object v5, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v5, v5, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-nez v5, :cond_0

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 316
    iget-object v5, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v5

    .line 317
    .local v5, "nickname":Ljava/lang/String;
    add-int/lit8 v6, v0, 0x1

    .line 318
    .local v6, "pos":I
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120fc5

    new-array v9, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 317
    invoke-interface {p1, v10, v3, v0, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 319
    .local v0, "removeThisUser":Landroid/view/MenuItem;
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 321
    .end local v0
    .end local v5
    move v0, v6

    .end local v6
    .local v0, "pos":I
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 322
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 286
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 288
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 293
    return-void

    .line 289
    :cond_1
    :goto_0
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .line 499
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    .line 501
    invoke-virtual {p0, p0}, Lcom/android/settings/users/UserSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 502
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 1048
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1049
    const/4 v1, -0x1

    :try_start_0
    iput v1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 1050
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    .line 1051
    monitor-exit v0

    .line 1052
    return-void

    .line 1051
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onLabelChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 1066
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1067
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 326
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 327
    .local v0, "itemId":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 328
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/users/UserSettings;->onRemoveUserClicked(I)V

    .line 329
    return v1

    .line 331
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPause()V
    .locals 1

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    .line 281
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 282
    return-void
.end method

.method public onPhotoChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "photo"    # Landroid/graphics/drawable/Drawable;

    .line 1061
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1062
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 8
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .line 983
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    .line 984
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-eqz v0, :cond_0

    .line 985
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 986
    return v2

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 990
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/users/UserSettings;->onManageUserClicked(IZ)V

    goto :goto_0

    .line 992
    :cond_1
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_0

    .line 994
    :cond_2
    instance-of v0, p1, Lcom/android/settings/users/UserPreference;

    if-eqz v0, :cond_4

    .line 995
    move-object v0, p1

    check-cast v0, Lcom/android/settings/users/UserPreference;

    invoke-virtual {v0}, Lcom/android/settings/users/UserPreference;->getUserId()I

    move-result v0

    .line 997
    .local v0, "userId":I
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 998
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v2}, Lcom/android/settings/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 999
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    iget v7, v2, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1002
    .end local v0
    .end local v2
    :cond_3
    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    if-ne p1, v0, :cond_6

    .line 1005
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    if-eqz v0, :cond_5

    .line 1006
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_0

    .line 1008
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/settings/users/UserSettings;->onAddUserClicked(I)V

    .line 1011
    :cond_6
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 3

    .line 259
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 261
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_0

    .line 262
    return-void

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 266
    .local v0, "screen":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    .line 268
    invoke-virtual {v2}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    .line 267
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 271
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    if-eqz v1, :cond_2

    .line 272
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/users/UserCapabilities;->updateAddUserCapabilities(Landroid/content/Context;)V

    .line 273
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->loadProfile()V

    .line 274
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    .line 276
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 297
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 298
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/EditUserInfoController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 299
    const-string v0, "adding_user"

    iget v1, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 300
    const-string v0, "removing_user"

    iget v1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 305
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/android/settings/users/EditUserInfoController;->startingActivityForResult()V

    .line 306
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 307
    return-void
.end method
