.class public final synthetic Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$Xc5BA2nCks8YuSzn7LsPZS7EmPA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

.field private final synthetic f$1:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$Xc5BA2nCks8YuSzn7LsPZS7EmPA;->f$0:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    iput-object p2, p0, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$Xc5BA2nCks8YuSzn7LsPZS7EmPA;->f$1:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$Xc5BA2nCks8YuSzn7LsPZS7EmPA;->f$0:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    iget-object v1, p0, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$Xc5BA2nCks8YuSzn7LsPZS7EmPA;->f$1:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->lambda$requestHighlight$0(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method
