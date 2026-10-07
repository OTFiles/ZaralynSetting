.class public Lcom/android/settingslib/drawer/UserAdapter$UserDetails;
.super Ljava/lang/Object;
.source "UserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/drawer/UserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserDetails"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mName:Ljava/lang/String;

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Landroid/os/UserManager;Landroid/content/Context;)V
    .locals 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "um"    # Landroid/os/UserManager;
    .param p3, "context"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;

    .line 55
    iget-object v0, p0, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 57
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    sget v1, Lcom/android/settingslib/R$string;->managed_user_title:I

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->mName:Ljava/lang/String;

    .line 59
    const v1, 0x1080335

    invoke-virtual {p3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 62
    .end local v1
    :cond_0
    iget-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->mName:Ljava/lang/String;

    .line 63
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    .line 64
    .local v1, "userId":I
    invoke-virtual {p2, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 65
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p2, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 67
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    move-object v1, v2

    goto :goto_0

    .line 68
    .end local v2
    :cond_1
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    .line 67
    invoke-static {v2, v1, v3}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 71
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-static {p3, v1}, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->encircle(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/drawer/UserAdapter$UserDetails;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/drawer/UserAdapter$UserDetails;

    .line 48
    iget-object v0, p0, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settingslib/drawer/UserAdapter$UserDetails;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/drawer/UserAdapter$UserDetails;

    .line 48
    iget-object v0, p0, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private static encircle(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 75
    new-instance v0, Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-static {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->getSizeForList(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/drawable/UserIconDrawable;-><init>(I)V

    .line 76
    invoke-virtual {v0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/drawable/UserIconDrawable;->bake()Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object v0

    .line 75
    return-object v0
.end method
