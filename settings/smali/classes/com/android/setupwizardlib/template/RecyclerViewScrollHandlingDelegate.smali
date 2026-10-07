.class public Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;
.super Ljava/lang/Object;
.source "RecyclerViewScrollHandlingDelegate.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;


# instance fields
.field private final mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final mRequireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "requireScrollMixin"    # Lcom/android/setupwizardlib/template/RequireScrollMixin;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->mRequireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    .line 44
    iput-object p2, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 45
    return-void
.end method
