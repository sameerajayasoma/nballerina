// @type IntIntRT < IntIntT
// @type IntIntRT < Int2
type IntIntRT readonly & [int, int];

// @type Int2R = IntIntRT
type Int2R readonly & int[2];
