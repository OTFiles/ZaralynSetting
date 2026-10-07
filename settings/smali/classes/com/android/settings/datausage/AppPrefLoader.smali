.class public Lcom/android/settings/datausage/AppPrefLoader;
.super Lcom/android/settingslib/utils/AsyncLoader;
.source "AppPrefLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoader<",
        "Landroid/util/ArraySet<",
        "Landroid/support/v7/preference/Preference;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/ArraySet;Landroid/content/pm/PackageManager;)V
    .locals 0
    .param p1, "prefContext"    # Landroid/content/Context;
    .param p3, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")V"
        }
    .end annotation

    .line 32
    .local p2, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p2, p0, Lcom/android/settings/datausage/AppPrefLoader;->mPackages:Landroid/util/ArraySet;

    .line 34
    iput-object p3, p0, Lcom/android/settings/datausage/AppPrefLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 35
    iput-object p1, p0, Lcom/android/settings/datausage/AppPrefLoader;->mPrefContext:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/util/ArraySet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 41
    .local v0, "results":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/support/v7/preference/Preference;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/settings/datausage/AppPrefLoader;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 43
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/datausage/AppPrefLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings/datausage/AppPrefLoader;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 44
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    new-instance v4, Landroid/support/v7/preference/Preference;

    iget-object v6, p0, Lcom/android/settings/datausage/AppPrefLoader;->mPrefContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 45
    .local v4, "preference":Landroid/support/v7/preference/Preference;
    iget-object v6, p0, Lcom/android/settings/datausage/AppPrefLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 46
    iget-object v6, p0, Lcom/android/settings/datausage/AppPrefLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 48
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 50
    .end local v3
    .end local v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 49
    :catch_0
    move-exception v3

    .line 41
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v1
    .end local v2
    :cond_0
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppPrefLoader;->loadInBackground()Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method protected onDiscardResult(Landroid/util/ArraySet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/support/v7/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p1, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/support/v7/preference/Preference;>;"
    return-void
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppPrefLoader;->onDiscardResult(Landroid/util/ArraySet;)V

    return-void
.end method
