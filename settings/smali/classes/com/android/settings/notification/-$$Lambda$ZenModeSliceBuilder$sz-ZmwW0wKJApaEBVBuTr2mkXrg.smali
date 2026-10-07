.class public final synthetic Lcom/android/settings/notification/-$$Lambda$ZenModeSliceBuilder$sz-ZmwW0wKJApaEBVBuTr2mkXrg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v4/util/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/CharSequence;

.field private final synthetic f$1:Landroidx/slice/builders/SliceAction;

.field private final synthetic f$2:Landroidx/slice/builders/SliceAction;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/CharSequence;Landroidx/slice/builders/SliceAction;Landroidx/slice/builders/SliceAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$ZenModeSliceBuilder$sz-ZmwW0wKJApaEBVBuTr2mkXrg;->f$0:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/settings/notification/-$$Lambda$ZenModeSliceBuilder$sz-ZmwW0wKJApaEBVBuTr2mkXrg;->f$1:Landroidx/slice/builders/SliceAction;

    iput-object p3, p0, Lcom/android/settings/notification/-$$Lambda$ZenModeSliceBuilder$sz-ZmwW0wKJApaEBVBuTr2mkXrg;->f$2:Landroidx/slice/builders/SliceAction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/-$$Lambda$ZenModeSliceBuilder$sz-ZmwW0wKJApaEBVBuTr2mkXrg;->f$0:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/notification/-$$Lambda$ZenModeSliceBuilder$sz-ZmwW0wKJApaEBVBuTr2mkXrg;->f$1:Landroidx/slice/builders/SliceAction;

    iget-object v2, p0, Lcom/android/settings/notification/-$$Lambda$ZenModeSliceBuilder$sz-ZmwW0wKJApaEBVBuTr2mkXrg;->f$2:Landroidx/slice/builders/SliceAction;

    check-cast p1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-static {v0, v1, v2, p1}, Lcom/android/settings/notification/ZenModeSliceBuilder;->lambda$getSlice$0(Ljava/lang/CharSequence;Landroidx/slice/builders/SliceAction;Landroidx/slice/builders/SliceAction;Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    return-void
.end method
