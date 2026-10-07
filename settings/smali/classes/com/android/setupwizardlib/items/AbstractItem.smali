.class public abstract Lcom/android/setupwizardlib/items/AbstractItem;
.super Lcom/android/setupwizardlib/items/AbstractItemHierarchy;
.source "AbstractItem.java"

# interfaces
.implements Lcom/android/setupwizardlib/items/IItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public getItemAt(I)Lcom/android/setupwizardlib/items/IItem;
    .locals 0
    .param p1, "position"    # I

    .line 43
    return-object p0
.end method

.method public notifyItemChanged()V
    .locals 2

    .line 64
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/items/AbstractItem;->notifyItemRangeChanged(II)V

    .line 65
    return-void
.end method
