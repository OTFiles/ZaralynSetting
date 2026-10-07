.class Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;
.super Ljava/lang/Object;
.source "AppRestrictionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/users/AppRestrictionsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iput-object p1, p0, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->mContext:Landroid/content/Context;

    .line 396
    iput-object p2, p0, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->mUser:Landroid/os/UserHandle;

    .line 397
    return-void
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getIPackageManager()Landroid/content/pm/IPackageManager;
    .locals 1

    .line 412
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method getInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 422
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method getUser()Landroid/os/UserHandle;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method getUserManager()Landroid/os/UserManager;
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    return-object v0
.end method
