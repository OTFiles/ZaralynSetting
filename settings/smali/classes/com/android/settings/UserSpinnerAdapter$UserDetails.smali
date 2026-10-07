.class public Lcom/android/settings/UserSpinnerAdapter$UserDetails;
.super Ljava/lang/Object;
.source "UserSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserSpinnerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserDetails"
.end annotation


# instance fields
.field private final icon:Landroid/graphics/drawable/Drawable;

.field private final mUserHandle:Landroid/os/UserHandle;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Landroid/os/UserManager;Landroid/content/Context;)V
    .locals 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "um"    # Landroid/os/UserManager;
    .param p3, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;

    .line 50
    iget-object v0, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 51
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const v1, 0x7f120873

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->name:Ljava/lang/String;

    .line 53
    const v1, 0x108033a

    invoke-virtual {p3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 56
    :cond_0
    iget-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->name:Ljava/lang/String;

    .line 57
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    .line 58
    .local v1, "userId":I
    invoke-virtual {p2, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 59
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p2, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->icon:Landroid/graphics/drawable/Drawable;

    .line 64
    .end local v1
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/UserSpinnerAdapter$UserDetails;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserSpinnerAdapter$UserDetails;

    .line 43
    iget-object v0, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/UserSpinnerAdapter$UserDetails;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserSpinnerAdapter$UserDetails;

    .line 43
    iget-object v0, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/UserSpinnerAdapter$UserDetails;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserSpinnerAdapter$UserDetails;

    .line 43
    iget-object v0, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->name:Ljava/lang/String;

    return-object v0
.end method
