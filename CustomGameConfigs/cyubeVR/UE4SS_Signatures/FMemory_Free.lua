function Register()
    return "4 8/8 5/C 9/7 4/4 9/5 3/4 8/8 3/E C/2 0/4 8/8 B/D 9/4 8/8 B/? ?/? ?/? ?/? ?/? ?/4 8/8 5/C 9"
end

function OnMatchFound(MatchAddress) 
    -- Find the second MOV instruction and resolve it
    -- Ideally a disassembler is used to guarantee that we are at the second MOV instruction
    -- But seeing as FMemory::Free has never really changed, we can take a shortcut and just count the bytes to the second MOV instruction
    -- 13 bytes (0xD)
    -- This MOV instruction behaves like a LEA instruction
    local MovInstr = MatchAddress + 0xD
    
    -- Instruction size, including REX and ModR
    local InstrSize = 0x7
    local NextInstr = MovInstr + InstrSize
    local Offset = DerefToInt32(MovInstr + 0x3)
    return NextInstr + Offset
end