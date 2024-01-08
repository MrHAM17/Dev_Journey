package com.firstbankdigitalbanking.app.modules.loans.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.databinding.RowLoansBinding
import com.firstbankdigitalbanking.app.modules.loans.`data`.model.LoansRowModel
import kotlin.Int
import kotlin.collections.List

class LoansAdapter(
  var list: List<LoansRowModel>
) : RecyclerView.Adapter<LoansAdapter.RowLoansVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowLoansVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_loans,parent,false)
    return RowLoansVH(view)
  }

  override fun onBindViewHolder(holder: RowLoansVH, position: Int) {
    val loansRowModel = LoansRowModel()
    // TODO uncomment following line after integration with data source
    // val loansRowModel = list[position]
    holder.binding.loansRowModel = loansRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<LoansRowModel>) {
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
      item: LoansRowModel
    ) {
    }
  }

  inner class RowLoansVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowLoansBinding = RowLoansBinding.bind(itemView)
  }
}
