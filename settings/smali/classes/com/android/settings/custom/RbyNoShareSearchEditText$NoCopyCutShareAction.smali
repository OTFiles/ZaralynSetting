.class Lcom/android/settings/custom/RbyNoShareSearchEditText$NoCopyCutShareAction;
.super Ljava/lang/Object;
.source "RbyNoShareSearchEditText.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/custom/RbyNoShareSearchEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoCopyCutShareAction"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/custom/RbyNoShareSearchEditText$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/custom/RbyNoShareSearchEditText$1;

    .line 43
    invoke-direct {p0}, Lcom/android/settings/custom/RbyNoShareSearchEditText$NoCopyCutShareAction;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 116
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 91
    invoke-virtual {p0, p2}, Lcom/android/settings/custom/RbyNoShareSearchEditText$NoCopyCutShareAction;->removeOtherMenuKeepNormal(Landroid/view/Menu;)V

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public removeOtherMenuKeepNormal(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .line 47
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    .line 49
    .local v0, "size":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "inum":I
    :goto_0
    if-ltz v1, :cond_1

    .line 50
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 51
    .local v2, "item":Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 53
    .local v3, "itemId":I
    const v4, 0x1020020

    if-eq v3, v4, :cond_0

    const v4, 0x1020021

    if-eq v3, v4, :cond_0

    const v4, 0x102001f

    if-eq v3, v4, :cond_0

    const v4, 0x1020022

    if-eq v3, v4, :cond_0

    .line 55
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    .line 49
    .end local v2
    .end local v3
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 59
    .end local v1
    :cond_1
    return-void
.end method
