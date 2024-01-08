package com.firstbankdigitalbanking.app.modules.services.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.databinding.RowLoanoneBinding
import com.firstbankdigitalbanking.app.modules.services.`data`.model.LoanoneRowModel
import kotlin.Int
import kotlin.collections.List

class LoanOneAdapter(
  var list: List<LoanoneRowModel>
) : RecyclerView.Adapter<LoanOneAdapter.RowLoanoneVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowLoanoneVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_loanone,parent,false)
    return RowLoanoneVH(view)
  }

  override fun onBindViewHolder(holder: RowLoanoneVH, position: Int) {
    val loanoneRowModel = LoanoneRowModel()
    // TODO uncomment following line after integration with data source
    // val loanoneRowModel = list[position]
    holder.binding.loanoneRowModel = loanoneRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<LoanoneRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: LoanoneRowModel
    ) {
    }
  }

  inner class RowLoanoneVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowLoanoneBinding = RowLoanoneBinding.bind(itemView)
  }
}
