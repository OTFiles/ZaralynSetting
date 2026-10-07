.class public Lcom/android/settingslib/utils/IconCache;
.super Ljava/lang/Object;
.source "IconCache.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mMap:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/graphics/drawable/Icon;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/utils/IconCache;->mMap:Landroid/support/v4/util/ArrayMap;

    .line 35
    iput-object p1, p0, Lcom/android/settingslib/utils/IconCache;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public getIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 39
    if-nez p1, :cond_0

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/utils/IconCache;->mMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 43
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 44
    iget-object v1, p0, Lcom/android/settingslib/utils/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/utils/IconCache;->updateIcon(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Drawable;)V

    .line 47
    :cond_1
    return-object v0
.end method

.method public updateIcon(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 51
    iget-object v0, p0, Lcom/android/settingslib/utils/IconCache;->mMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method
